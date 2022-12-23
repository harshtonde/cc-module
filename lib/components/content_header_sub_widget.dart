import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContentHeaderSubWidget extends StatefulWidget {
  const ContentHeaderSubWidget({
    Key? key,
    this.title,
    this.value,
  }) : super(key: key);

  final String? title;
  final String? value;

  @override
  _ContentHeaderSubWidgetState createState() => _ContentHeaderSubWidgetState();
}

class _ContentHeaderSubWidgetState extends State<ContentHeaderSubWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
              child: Text(
                valueOrDefault<String>(
                  widget.title,
                  'Available to Spend',
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.value,
                '₹ 12,502',
              ),
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).title1,
            ),
          ],
        ),
      ),
    );
  }
}
