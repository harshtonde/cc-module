import '../components/autopay_swtich_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentCardsWidget extends StatefulWidget {
  const PaymentCardsWidget({Key? key}) : super(key: key);

  @override
  _PaymentCardsWidgetState createState() => _PaymentCardsWidgetState();
}

class _PaymentCardsWidgetState extends State<PaymentCardsWidget> {
  String? dropDownValue;
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(60, 24, 60, 0),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.center,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'u0jy5ubf' /* YOUR CREDIT CARDS */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16,
                        letterSpacing: 1,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
                Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1EFE5),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '1 / 5',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: Color(0xFF6CA17D),
                            fontSize: 12,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional(-1, -1),
                  children: [
                    FlutterFlowDropDown<String>(
                      initialOption: dropDownValue ??= '** 4545',
                      options: ['** 5921', '** 4545', '** 4212'],
                      optionLabels: [
                        FFLocalizations.of(context).getText(
                          'e2d9cyx6' /* 5921 */,
                        ),
                        FFLocalizations.of(context).getText(
                          'vpgsz1id' /* 4545 */,
                        ),
                        FFLocalizations.of(context).getText(
                          's0yt6fuw' /* 4212 */,
                        )
                      ],
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: 130,
                      height: 30,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyText1
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FlutterFlowTheme.of(context).primaryText,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 15,
                      ),
                      fillColor: FlutterFlowTheme.of(context).lineColor,
                      elevation: 2,
                      borderColor: Colors.transparent,
                      borderWidth: 0,
                      borderRadius: 1000,
                      margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                      hidesUnderline: true,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 3, 0, 0),
                      child: Container(
                        height: 24,
                        constraints: BoxConstraints(
                          maxWidth: 100,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/logo_Bank_aloneBG@1x.png',
                              width: 16,
                              height: 16,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  dropDownValue!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      '3nd9ebag' /* ADD MY CREDIT CARD */,
                    ),
                    icon: Icon(
                      Icons.add,
                      size: 20,
                    ),
                    options: FFButtonOptions(
                      height: 30,
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
                      color: mouseRegionHovered1!
                          ? FlutterFlowTheme.of(context).primaryColor
                          : FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).subtitle2Family,
                            color: mouseRegionHovered1!
                                ? Colors.white
                                : FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).subtitle2Family),
                          ),
                      borderSide: BorderSide(
                        color: Color(0xFFFEE3D4),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered1 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered1 = false);
                  }),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 270,
                  child: custom_widgets.PaymentCardsZoomingCarousel(
                    width: double.infinity,
                    height: 270,
                    cardWidth: 420,
                    cardMaxPadding: 20,
                    images: FFAppState().creditCardImages.toList(),
                    onCardChanged: () async {},
                  ),
                ),
                Container(
                  width: 90,
                  height: 270,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).overlay0,
                        FlutterFlowTheme.of(context).overlay
                      ],
                      stops: [0, 1],
                      begin: AlignmentDirectional(1, 0),
                      end: AlignmentDirectional(-1, 0),
                    ),
                  ),
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (mouseRegionHovered2! || mouseRegionHovered3!)
                          Container(
                            width: 30,
                            height: 120,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Icon(
                              Icons.chevron_left_rounded,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                          ),
                      ],
                    ),
                    onEnter: ((event) async {
                      setState(() => mouseRegionHovered2 = true);
                    }),
                    onExit: ((event) async {
                      setState(() => mouseRegionHovered2 = false);
                    }),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1, 0),
                  child: Container(
                    width: 90,
                    height: 270,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).overlay,
                          FlutterFlowTheme.of(context).overlay0
                        ],
                        stops: [0, 1],
                        begin: AlignmentDirectional(1, 0),
                        end: AlignmentDirectional(-1, 0),
                      ),
                    ),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (mouseRegionHovered2! || mouseRegionHovered3!)
                            Container(
                              width: 30,
                              height: 120,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                        ],
                      ),
                      onEnter: ((event) async {
                        setState(() => mouseRegionHovered3 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => mouseRegionHovered3 = false);
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 40,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'czmsush6' /* Expiry date */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  fontSize: 16,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '2r9o5i5l' /* ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText1Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'vkg90g4z' /* CVV */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  fontSize: 16,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'u6blhjjo' /* ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText1Family),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '6w682shj' /* Show */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: Color(0xFF616571),
                                  fontSize: 14,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: AutopaySwtichWidget(),
                          ),
                        ],
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'PAYMENT_CARDS_UPGRADE_CARD_BTN_ON_TAP');
                            logFirebaseEvent('Button_alert_dialog');
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Not Implemented'),
                                  content: Text('Not yet implemented'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'eyk1wr7w' /* UPGRADE CARD */,
                          ),
                          icon: Icon(
                            Icons.credit_card_outlined,
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
                            color: mouseRegionHovered4!
                                ? Colors.white
                                : FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText2Family,
                                  color: mouseRegionHovered4!
                                      ? FlutterFlowTheme.of(context)
                                          .primaryColor
                                      : Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText2Family),
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          showLoadingIndicator: false,
                        ),
                        onEnter: ((event) async {
                          setState(() => mouseRegionHovered4 = true);
                        }),
                        onExit: ((event) async {
                          setState(() => mouseRegionHovered4 = false);
                        }),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 40,
                  runSpacing: 40,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          'jo7gmxer' /* GET NEW CREDIT CARD */,
                        ),
                        icon: Icon(
                          Icons.add,
                          color: mouseRegionHovered5!
                              ? Colors.white
                              : FlutterFlowTheme.of(context).primaryColor,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
                          color: mouseRegionHovered5!
                              ? FlutterFlowTheme.of(context).primaryColor
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: mouseRegionHovered5!
                                    ? Colors.white
                                    : FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          elevation: 2,
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => mouseRegionHovered5 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => mouseRegionHovered5 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: FFLocalizations.of(context).getText(
                          '2zovcmtu' /* ADD A ADD-ON CARD */,
                        ),
                        icon: Icon(
                          Icons.add,
                          color: mouseRegionHovered6!
                              ? Colors.white
                              : FlutterFlowTheme.of(context).primaryColor,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          height: 40,
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
                          color: mouseRegionHovered6!
                              ? FlutterFlowTheme.of(context).primaryColor
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .subtitle2Family,
                                color: mouseRegionHovered6!
                                    ? Colors.white
                                    : FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .subtitle2Family),
                              ),
                          elevation: 2,
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => mouseRegionHovered6 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => mouseRegionHovered6 = false);
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
