import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ButtonPrimaryWidget extends StatefulWidget {
  const ButtonPrimaryWidget({
    Key? key,
    this.title,
    this.icon,
    this.width,
  }) : super(key: key);

  final String? title;
  final Widget? icon;
  final int? width;

  @override
  _ButtonPrimaryWidgetState createState() => _ButtonPrimaryWidgetState();
}

class _ButtonPrimaryWidgetState extends State<ButtonPrimaryWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  bool mouseRegionHovered = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        height: 44,
        child: Stack(
          alignment: AlignmentDirectional(0, 0),
          children: [
            Container(
              width: widget.width?.toDouble(),
              height: 44,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x33000000),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).lineColor,
                  width: 1,
                ),
              ),
              alignment: AlignmentDirectional(0, 0),
            ),
            if (mouseRegionHovered ?? true)
              Container(
                width: widget.width?.toDouble(),
                height: 44,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(40),
                ),
                alignment: AlignmentDirectional(0, 0),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.icon!,
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
                    child: Text(
                      widget.title!,
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText2Family,
                            color: mouseRegionHovered!
                                ? FlutterFlowTheme.of(context).primaryColor
                                : FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 14,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText2Family),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onEnter: ((event) async {
        setState(() => mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => mouseRegionHovered = false);
      }),
    );
  }
}
