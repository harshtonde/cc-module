import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UITagWidget extends StatefulWidget {
  const UITagWidget({
    Key? key,
    this.title,
    this.icon,
    this.bgColor,
    this.textColor,
  }) : super(key: key);

  final String? title;
  final Widget? icon;
  final Color? bgColor;
  final Color? textColor;

  @override
  _UITagWidgetState createState() => _UITagWidgetState();
}

class _UITagWidgetState extends State<UITagWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 200,
      height: 28,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: AlignmentDirectional(0, 0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 4, 0),
              child: Text(
                widget.title!,
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                      color: widget.textColor,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText2Family),
                    ),
              ),
            ),
            widget.icon!,
          ],
        ),
      ),
    );
  }
}
