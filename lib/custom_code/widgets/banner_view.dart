// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/c-c-module-lpj62k/assets/mdfwtdv9xlkv/b3.png',
  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/c-c-module-lpj62k/assets/rryjlffh6wkl/b2.png',
  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/c-c-module-lpj62k/assets/scjjsux7cvzy/b1.png',
  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/c-c-module-lpj62k/assets/ix33sx2lyvtg/b4.png'
];

class BannerView extends StatefulWidget {
  BannerView({Key? key, this.width, this.height, required this.bannerClick})
      : super(key: key);

  var bannerClick;
  final double? width;
  final double? height;
  @override
  State<BannerView> createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  Color? color = null;
  Color? colorRight = null;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              height: 400,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: imgList
              .map((item) => GestureDetector(
                    onTap: () {
                      widget.bannerClick(item);
                      FFAppState().bannerValue = item;
                    },
                    child: Container(
                      child: Center(
                          child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: 400,
                      )),
                    ),
                  ))
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: SizedBox(
            height: 200,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    onHover: (e) {
                      setState(() {
                        color = Color(0x88000000);
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        color = null;
                      });
                    },
                    child: GestureDetector(
                      onTap: () {
                        _controller.previousPage();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: color ?? Color(0x0),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onHover: (e) {
                      setState(() {
                        colorRight = Color(0x88000000);
                      });
                    },
                    onExit: (e) {
                      setState(() {
                        colorRight = null;
                      });
                    },
                    child: GestureDetector(
                      onTap: () => _controller.nextPage(),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: colorRight ?? Color(0x0),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 30),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 150, left: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: _current == entry.key ? 12.0 : 7.0,
                  height: _current == entry.key ? 12.0 : 7.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? Color(0xffb75600)
                          : Colors.white),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
