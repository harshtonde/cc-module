import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoanOnCCComponentWidget extends StatefulWidget {
  const LoanOnCCComponentWidget({Key? key}) : super(key: key);

  @override
  _LoanOnCCComponentWidgetState createState() =>
      _LoanOnCCComponentWidgetState();
}

class _LoanOnCCComponentWidgetState extends State<LoanOnCCComponentWidget> {
  bool mouseRegionHovered = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFFB7BDF4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'r6e4utns' /* Loan on Credit Card */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: Color(0xFF0D2923),
                            fontWeight: FontWeight.w800,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'g7qbhwtb' /* Get instant loan within our Cr... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: Color(0xFF0D2923),
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
                  ),
                  MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: InkWell(
                      onTap: () async {
                        await launchURL(
                            'https://icici-ucj-pl-test.flutterflow.app');
                      },
                      child: Container(
                        width: 320,
                        height: 40,
                        decoration: BoxDecoration(
                          color: mouseRegionHovered!
                              ? Color(0xFF7E5EFC)
                              : Color(0xFFDEDEF9),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'tz925ngq' /* APPLY FOR LOAN ON CREDIT CARD */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: !mouseRegionHovered!
                                        ? Color(0xFF0D2923)
                                        : Color(0xFFDEDEF9),
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText1Family),
                                  ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: !mouseRegionHovered!
                                  ? Color(0xFF0D2923)
                                  : Color(0xFFDEDEF9),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    onEnter: ((event) async {
                      setState(() => mouseRegionHovered = true);
                    }),
                    onExit: ((event) async {
                      setState(() => mouseRegionHovered = false);
                    }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              child: Image.asset(
                'assets/images/loan-cc.png',
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
