import '../backend/api_requests/api_calls.dart';
import '../components/emi_item_widget.dart';
import '../components/side_bar_update_widget.dart';
import '../components/top_header_mobile_widget.dart';
import '../components/top_header_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConvertToEMIWidget extends StatefulWidget {
  const ConvertToEMIWidget({Key? key}) : super(key: key);

  @override
  _ConvertToEMIWidgetState createState() => _ConvertToEMIWidgetState();
}

class _ConvertToEMIWidgetState extends State<ConvertToEMIWidget> {
  bool? checkboxValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              TopHeaderWidget(
                title: 'Dashboard',
                subTitle: 'Your account summary is displayed below.',
              ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              TopHeaderMobileWidget(),
            Expanded(
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                              width: 1,
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 24),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 9,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 16, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 7,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 8, 0),
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        4,
                                                                        4,
                                                                        16),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .viewStatementsColor,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        3,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            1),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          12),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          12),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          44),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          44),
                                                                ),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            12,
                                                                            24,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              12,
                                                                              0,
                                                                              12),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              InkWell(
                                                                                onTap: () async {
                                                                                  context.pop();
                                                                                },
                                                                                child: Container(
                                                                                  width: 30,
                                                                                  height: 30,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).blue,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                  child: Icon(
                                                                                    Icons.chevron_left_outlined,
                                                                                    color: Colors.white,
                                                                                    size: 24,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'x50z7m3w' /* CONVERT TO EMI */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).subtitle1Family,
                                                                                          color: FlutterFlowTheme.of(context).blue,
                                                                                          fontSize: 16,
                                                                                          letterSpacing: 1,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle1Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            4,
                                                                            12),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            20,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          borderRadius:
                                                                              BorderRadius.circular(12),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            width:
                                                                                6,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24,
                                                                        80,
                                                                        24,
                                                                        12),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    blurRadius:
                                                                        3,
                                                                    color: Color(
                                                                        0x33000000),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            1),
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          12),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          12),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              48),
                                                                      child:
                                                                          Wrap(
                                                                        spacing:
                                                                            0,
                                                                        runSpacing:
                                                                            0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.none,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                12,
                                                                                0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'xdt7x0d8' /* Credit Card number */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 250,
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Container(
                                                                                    width: 250,
                                                                                    height: 50,
                                                                                    child: custom_widgets.CustomDropDown(
                                                                                      width: 250,
                                                                                      height: 50,
                                                                                      image: 'https://1000logos.net/wp-content/uploads/2021/11/VISA-logo.png',
                                                                                      imageFirst: false,
                                                                                      items: FFAppState().cardNumbers.toList(),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12,
                                                                                0,
                                                                                12,
                                                                                0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'xwd0yxyh' /* Select EMI tenure */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 12,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: 250,
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Container(
                                                                                    width: 250,
                                                                                    height: 50,
                                                                                    child: custom_widgets.CustomDropDown(
                                                                                      width: 250,
                                                                                      height: 50,
                                                                                      imageFirst: false,
                                                                                      items: FFAppState().emiTenures.toList(),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12,
                                                                                0,
                                                                                12,
                                                                                0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '09etjqbo' /* Rate of Interest
(per transact... */
                                                                                          ,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
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
                                                                                        '59b7l5nn' /* 16%   */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 20,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '4f38vu5y' /* p.a. */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 16,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12,
                                                                                0,
                                                                                12,
                                                                                0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '8fvmrcee' /* EMI Processing fee
(one time) */
                                                                                          ,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
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
                                                                                        'cy1nlegd' /* 2%  */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 20,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'w8wyefxg' /* of total EMI amount */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 16,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                      child: Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'mn0zcway' /* 1st EMI Payment Date
(Estimate... */
                                                                                          ,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
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
                                                                                        'mxkvx0h8' /* 08 Dec */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 16,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Wrap(
                                                                      spacing:
                                                                          12,
                                                                      runSpacing:
                                                                          12,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              772.4,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(12),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                              width: 2,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: double.infinity,
                                                                                height: 70,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFEEF0F5),
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(0),
                                                                                    bottomRight: Radius.circular(0),
                                                                                    topLeft: Radius.circular(11),
                                                                                    topRight: Radius.circular(11),
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'h5o55sqn' /* DATE & 
MONTH */
                                                                                                  ,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: Container(
                                                                                                  width: 20,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_up,
                                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_down,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '3xn23waf' /* TRANSACTION
REMARKS */
                                                                                                  ,
                                                                                                ),
                                                                                                textAlign: TextAlign.end,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: Container(
                                                                                                  width: 20,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_up,
                                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_down,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'dttmguyd' /* TRANSACTION
AMOUNT */
                                                                                                  ,
                                                                                                ),
                                                                                                textAlign: TextAlign.end,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: Container(
                                                                                                  width: 20,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_up,
                                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_down,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '8706m1l6' /* MONTHLY
EMI AMOUNT */
                                                                                                  ,
                                                                                                ),
                                                                                                textAlign: TextAlign.end,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: Container(
                                                                                                  width: 20,
                                                                                                  height: 30,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_up,
                                                                                                        color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                      Icon(
                                                                                                        Icons.arrow_drop_down,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 16,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '0wib0c1m' /* SELECT
TRANSACTION */
                                                                                                  ,
                                                                                                ),
                                                                                                textAlign: TextAlign.end,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              FutureBuilder<ApiCallResponse>(
                                                                                future: EMIsGroup.getAllEMIsCall.call(),
                                                                                builder: (context, snapshot) {
                                                                                  // Customize what your widget looks like when it's loading.
                                                                                  if (!snapshot.hasData) {
                                                                                    return Center(
                                                                                      child: SizedBox(
                                                                                        width: 20,
                                                                                        height: 20,
                                                                                        child: CircularProgressIndicator(
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  final listViewGetAllEMIsResponse = snapshot.data!;
                                                                                  return Builder(
                                                                                    builder: (context) {
                                                                                      final resultsItem = EMIsGroup.getAllEMIsCall
                                                                                          .results(
                                                                                            listViewGetAllEMIsResponse.jsonBody,
                                                                                          )
                                                                                          .toList();
                                                                                      return ListView.builder(
                                                                                        padding: EdgeInsets.zero,
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: resultsItem.length,
                                                                                        itemBuilder: (context, resultsItemIndex) {
                                                                                          final resultsItemItem = resultsItem[resultsItemIndex];
                                                                                          return Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0.5, 0, 0),
                                                                                            child: EmiItemWidget(
                                                                                              key: UniqueKey(),
                                                                                              date: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.date''',
                                                                                              ).toString(),
                                                                                              month: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.month''',
                                                                                              ).toString(),
                                                                                              year: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.year''',
                                                                                              ).toString(),
                                                                                              image: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.image''',
                                                                                              ),
                                                                                              remark: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.remark''',
                                                                                              ).toString(),
                                                                                              transactionAmount: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.txnAmount''',
                                                                                              ).toString(),
                                                                                              emiAmount: getJsonField(
                                                                                                resultsItemItem,
                                                                                                r'''$.emiAmount''',
                                                                                              ).toString(),
                                                                                              isChecked: false,
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                              constraints: BoxConstraints(
                                                                                maxWidth: 400,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(12),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: double.infinity,
                                                                                    height: 30,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).containerColor,
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(0),
                                                                                        bottomRight: Radius.circular(0),
                                                                                        topLeft: Radius.circular(12),
                                                                                        topRight: Radius.circular(12),
                                                                                      ),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                      ),
                                                                                    ),
                                                                                    alignment: AlignmentDirectional(0, 0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'wtmt1rvu' /* EMI DETAILS */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 14,
                                                                                            letterSpacing: 1,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'rhzk8l1w' /* PRO TIPS */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                fontSize: 12,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                              ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.keyboard_arrow_up_outlined,
                                                                                          color: FlutterFlowTheme.of(context).primaryColor,
                                                                                          size: 18,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: double.infinity,
                                                                                    decoration: BoxDecoration(
                                                                                      gradient: LinearGradient(
                                                                                        colors: [
                                                                                          FlutterFlowTheme.of(context).primaryBackground,
                                                                                          FlutterFlowTheme.of(context).secondaryBackground
                                                                                        ],
                                                                                        stops: [0, 1],
                                                                                        begin: AlignmentDirectional(0, -1),
                                                                                        end: AlignmentDirectional(0, 1),
                                                                                      ),
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(0),
                                                                                        bottomRight: Radius.circular(0),
                                                                                        topLeft: Radius.circular(12),
                                                                                        topRight: Radius.circular(12),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'y7fdww6s' /* EMI SUMMARY */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                  fontSize: 12,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'spqxmgra' /* Total transaction Amount */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '0w8oqkiy' /* ₹63,000 */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'w5bmvfm3' /* Total EMI amount */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '08uhbunw' /* ₹64,320 */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'mhxhf7kw' /* Monthly EMI amount
For 2 years... */
                                                                                                    ,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'jugbiuhi' /* ₹2,680 */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: double.infinity,
                                                                                    height: 100,
                                                                                    decoration: BoxDecoration(
                                                                                      gradient: LinearGradient(
                                                                                        colors: [
                                                                                          FlutterFlowTheme.of(context).primaryBackground,
                                                                                          FlutterFlowTheme.of(context).secondaryBackground
                                                                                        ],
                                                                                        stops: [0, 1],
                                                                                        begin: AlignmentDirectional(0, -1),
                                                                                        end: AlignmentDirectional(0, 1),
                                                                                      ),
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(12),
                                                                                        bottomRight: Radius.circular(12),
                                                                                        topLeft: Radius.circular(0),
                                                                                        topRight: Radius.circular(0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'nhk6m424' /* EMI processing fee */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '2fh5okdz' /* ₹1,480 */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'fxhzz9o5' /* One time EMI processing fee wi... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 400,
                                                                              height: 100,
                                                                              constraints: BoxConstraints(
                                                                                maxWidth: 400,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Theme(
                                                                                      data: ThemeData(
                                                                                        checkboxTheme: CheckboxThemeData(
                                                                                          shape: CircleBorder(),
                                                                                        ),
                                                                                        unselectedWidgetColor: FlutterFlowTheme.of(context).lineColor,
                                                                                      ),
                                                                                      child: Checkbox(
                                                                                        value: checkboxValue ??= true,
                                                                                        onChanged: (newValue) async {
                                                                                          setState(() => checkboxValue = newValue!);
                                                                                        },
                                                                                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Wrap(
                                                                                        spacing: 0,
                                                                                        runSpacing: 0,
                                                                                        alignment: WrapAlignment.start,
                                                                                        crossAxisAlignment: WrapCrossAlignment.start,
                                                                                        direction: Axis.horizontal,
                                                                                        runAlignment: WrapAlignment.start,
                                                                                        verticalDirection: VerticalDirection.down,
                                                                                        clipBehavior: Clip.none,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'rn6463jj' /* I have read, understood and ag... */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '922ky0mi' /* terms & conditions. */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  decoration: TextDecoration.underline,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12, 12, 0, 0),
                                                                              child: Wrap(
                                                                                spacing: 24,
                                                                                runSpacing: 24,
                                                                                alignment: WrapAlignment.center,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      context.pushNamed('initiateTransferOTP');
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      'ase5k83e' /* PAY ₹1,480 & CONVERT TO EMI */,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 44,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                                                                      color: checkboxValue! ? FlutterFlowTheme.of(context).primaryColor : Color(0xFFEBEDF6),
                                                                                      textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                            color: checkboxValue! ? Colors.white : Color(0xFFB1B1C1),
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                          ),
                                                                                      elevation: 0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(40),
                                                                                    ),
                                                                                  ),
                                                                                  FFButtonWidget(
                                                                                    onPressed: () async {
                                                                                      setState(() {
                                                                                        FFAppState().convertToEmiInitiated = false;
                                                                                      });
                                                                                      context.pop();
                                                                                    },
                                                                                    text: FFLocalizations.of(context).getText(
                                                                                      '8fjuxmv3' /* CANCEL */,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 44,
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
                                                                                            color: FlutterFlowTheme.of(context).primaryColor,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).subtitle2Family),
                                                                                          ),
                                                                                      elevation: 0,
                                                                                      borderSide: BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 1,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(40),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                                                              child: Container(
                                                                                width: 460,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFFFF8EE),
                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                  border: Border.all(
                                                                                    color: Color(0xFFEAC795),
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0, 0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'mezkqs3r' /* IMPORTANT NOTES: */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: Color(0xFF212529),
                                                                                                    fontSize: 15,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'ry0ce3uz' /* 1. */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: Color(0xFF212529),
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0, 0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'blsmdrqh' /* EMI amount does not include pr... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: Color(0xFF212529),
                                                                                                          fontSize: 14,
                                                                                                          fontWeight: FontWeight.w300,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'do2ep532' /* 2. */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: Color(0xFF212529),
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0, 0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'om2zlzd8' /* Foreclosure fee will be charge... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: Color(0xFF212529),
                                                                                                          fontSize: 14,
                                                                                                          fontWeight: FontWeight.w300,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'b5q7uf69' /* 3. */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: Color(0xFF212529),
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0, 0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'f1p3kfwd' /* EMI amount shown above consist... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: Color(0xFF212529),
                                                                                                          fontSize: 14,
                                                                                                          fontWeight: FontWeight.w300,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'wym2cgu3' /* 4. */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                      color: Color(0xFF212529),
                                                                                                      fontSize: 14,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0, 0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                  child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      '175ntc3m' /* Goods and service Tax (GST) wi... */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: Color(0xFF212529),
                                                                                                          fontSize: 14,
                                                                                                          fontWeight: FontWeight.w300,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    SideBarUpdateWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
