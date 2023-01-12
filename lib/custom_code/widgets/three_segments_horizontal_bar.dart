// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
import 'dart:math' as math;

class ThreeSegmentsHorizontalBar extends StatefulWidget {
  const ThreeSegmentsHorizontalBar({
    Key? key,
    this.width,
    this.height,
    this.barBorderColor,
    this.firstSegmentPercentage,
    this.firstSegmentColor,
    this.middleSegmentPercentage,
    this.middleSegmentColor,
    this.lastSegmentPercentage,
    this.lastSegmentColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? barBorderColor;
  final double? firstSegmentPercentage;
  final Color? firstSegmentColor;
  final double? middleSegmentPercentage;
  final Color? middleSegmentColor;
  final double? lastSegmentPercentage;
  final Color? lastSegmentColor;

  @override
  _ThreeSegmentsHorizontalBarState createState() =>
      _ThreeSegmentsHorizontalBarState();
}

class _ThreeSegmentsHorizontalBarState
    extends State<ThreeSegmentsHorizontalBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
        child: Container(
          width: widget.width,
          height: widget.height,
          constraints: BoxConstraints(
            maxWidth: double.infinity,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(1000),
            border: Border.all(
              color: widget.barBorderColor ?? Color(0xFFA8B3C4),
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: widget.lastSegmentColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
              FractionallySizedBox(
                widthFactor: (widget.middleSegmentPercentage ?? 0) / 100,
                child: Container(
                  width: widget.middleSegmentPercentage,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.middleSegmentColor,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: (widget.firstSegmentPercentage ?? 0) / 100,
                child: Container(
                  width: widget.firstSegmentPercentage ?? 33.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        widget.firstSegmentColor ?? Color(0xFFE77817),
                      ],
                      begin: Alignment(-1, -1),
                      end: Alignment(-1, 1),
                      transform: GradientRotation(math.pi / -4),
                      stops: [0.5, 0.5],
                      tileMode: TileMode.repeated,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(1000),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(1000),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: CustomPaint(
                            size:
                                Size(widget.height ?? 10, widget.height ?? 10),
                            painter: DrawTriangle(widget.middleSegmentColor ??
                                Color(0xFFFFCB13))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  Color color;

  DrawTriangle(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(2, size.height);
    path.close();
    canvas.drawPath(path, Paint()..color = this.color);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
