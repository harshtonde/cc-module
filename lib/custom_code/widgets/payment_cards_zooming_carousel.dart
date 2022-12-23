// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../backend/supabase/supabase.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class PaymentCardsZoomingCarousel extends StatefulWidget {
  const PaymentCardsZoomingCarousel({
    Key? key,
    this.width,
    this.height,
    this.images,
    required this.onCardChanged,
    this.cardWidth,
    this.cardMaxPadding,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String>? images;
  final Future<dynamic> Function() onCardChanged; // at FF
  //final Future<dynamic> Function(int index) onCardChanged;
  final int? cardWidth;
  final int? cardMaxPadding;

  @override
  _PaymentCardsZoomingCarouselState createState() =>
      _PaymentCardsZoomingCarouselState();
}

class _PaymentCardsZoomingCarouselState
    extends State<PaymentCardsZoomingCarousel> {
  double _anchor = 0.0;
  bool _center = true;
  double _velocityFactor = 0.2;
  double _itemExtent = 220;
  double _itemHeight = 220 / 1.586;
  double _maxPadding = 20;
  late InfiniteScrollController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.cardWidth != null) {
      _itemExtent = widget.cardWidth!.toDouble();
      _itemHeight = _itemExtent / 1.586;
    }
    if (widget.cardMaxPadding != null) {
      _maxPadding = widget.cardMaxPadding!.toDouble();
    }
    _controller = InfiniteScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: _itemHeight,
          child: InfiniteCarousel.builder(
            itemCount: widget.images?.length ?? 0,
            itemExtent: _itemExtent,
            center: _center,
            anchor: _anchor,
            velocityFactor: _velocityFactor,
            scrollBehavior: kIsWeb
                ? ScrollConfiguration.of(context).copyWith(
                    dragDevices: {
                      // Allows to swipe in web browsers
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse
                    },
                  )
                : null,
            controller: _controller,
            onIndexChanged: (index) {
              widget.onCardChanged(); // at FF
              //widget.onCardChanged(index);
            },
            itemBuilder: (context, itemIndex, realIndex) {
              final currentOffset = _itemExtent * realIndex;
              return AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  final diff = (_controller.offset - currentOffset) * 2.0;
                  final maxPadding = _maxPadding;
                  final _carouselRatio = _itemExtent / maxPadding;

                  return Container(
                    transform: Matrix4.translationValues(
                        (diff / _carouselRatio), 0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: (diff / _carouselRatio).abs(),
                        bottom: (diff / _carouselRatio).abs(),
                        left: 10,
                        right: 10,
                      ),
                      child: child,
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Container(
                    // width: 320,
                    // height: 580,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(5),
                      // boxShadow: kElevationToShadow[2],
                      image: DecorationImage(
                        image: NetworkImage(widget.images?[itemIndex] ?? ''),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
