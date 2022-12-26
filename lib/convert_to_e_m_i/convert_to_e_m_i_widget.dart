import '../backend/api_requests/api_calls.dart';
import '../components/emi_item_widget.dart';
import '../components/side_bar_update_widget.dart';
import '../components/top_header_mobile_widget.dart';
import '../components/top_header_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
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
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'convertToEMI'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
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
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            12),
                                                                    bottomRight:
                                                                        Radius.circular(
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
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                12,
                                                                                0,
                                                                                12),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('CONVERT_TO_E_M_I_Container_z7wxc67c_ON_T');
                                                                                    logFirebaseEvent('Container_navigate_back');
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
                                                                                        'h8hn86jk' /* CONVERT TO EMI */,
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
                                                                            BorderRadius.circular(12),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
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
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              width: 6,
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
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            12),
                                                                    bottomRight:
                                                                        Radius.circular(
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
                                                                  padding: EdgeInsetsDirectional
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
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            48),
                                                                        child:
                                                                            Wrap(
                                                                          spacing:
                                                                              12,
                                                                          runSpacing:
                                                                              12,
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
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '3a2ll3ac' /* Credit Card number */,
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
                                                                                      image: 'https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/VISA-logo.png?alt=media&token=848edf9f-13d6-40fd-a258-eafbec887bd2',
                                                                                      imageFirst: false,
                                                                                      items: FFAppState().cardNumbers.toList(),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'jaat9qjj' /* Select EMI tenure */,
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
                                                                                          'lej0m7ea' /* Rate of Interest
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
                                                                                        'rfov13j7' /* 16%   */,
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
                                                                                        'tq9rcktz' /* p.a. */,
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
                                                                                          '5gtf3x4p' /* EMI Processing fee
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
                                                                                        'qihhbogv' /* 2%  */,
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
                                                                                        'g6flqs4e' /* of total EMI amount */,
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
                                                                                          're5zm33l' /* 1st EMI Payment Date
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
                                                                                        'tij38yxl' /* 08 Dec */,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Wrap(
                                                                        spacing:
                                                                            12,
                                                                        runSpacing:
                                                                            12,
                                                                        alignment:
                                                                            WrapAlignment.center,
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
                                                                                Container(
                                                                              width: 772.4,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(12),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                  width: 2,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                                      '5fznmjyr' /* DATE & 
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
                                                                                                      'yve9apmd' /* TRANSACTION
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
                                                                                                      'nfhg38bz' /* TRANSACTION
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
                                                                                                      'i0xs9q6a' /* MONTHLY
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
                                                                                                      'hrtzidjm' /* SELECT
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
                                                                                          'sbjry5mr' /* EMI DETAILS */,
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
                                                                                              'kd68cvam' /* PRO TIPS */,
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
                                                                                                'd4r0kgh1' /* EMI SUMMARY */,
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
                                                                                                      'jeethjny' /* Total transaction Amount */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'gc3xc8jb' /* ₹63,000 */,
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
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          'cmkispur' /* Total EMI amount */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                            ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                        child: Icon(
                                                                                                          Icons.info_sharp,
                                                                                                          color: Color(0xFFB6B9C0),
                                                                                                          size: 18,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      't3jrqvpv' /* ₹64,320 */,
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
                                                                                                      'niig7dqv' /* Monthly EMI amount
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
                                                                                                      'i783osx7' /* ₹2,680 */,
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
                                                                                                      '4q10q8oz' /* EMI processing fee */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                        ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      '4tphaxdy' /* ₹1,480 */,
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
                                                                                                        's68dr8g7' /* One time EMI processing fee wi... */,
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
                                                                                                'z2uiz73k' /* I have read, understood and ag... */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '82lxq4oj' /* terms & conditions. */,
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
                                                                                        logFirebaseEvent('CONVERT_TO_E_M_I_PAY_₹1,480_&_CONVERT_TO');
                                                                                        logFirebaseEvent('Button_navigate_to');

                                                                                        context.pushNamed('initiateTransferOTP');
                                                                                      },
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        'waztiium' /* PAY ₹1,480 & CONVERT TO EMI */,
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
                                                                                        logFirebaseEvent('CONVERT_TO_E_M_I_PAGE_CANCEL_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_update_local_state');
                                                                                        FFAppState().update(() {
                                                                                          FFAppState().convertToEmiInitiated = false;
                                                                                        });
                                                                                        logFirebaseEvent('Button_navigate_back');
                                                                                        context.pop();
                                                                                      },
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        'qyj87e44' /* CANCEL */,
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
                                                                                                  'p1cnmvmm' /* IMPORTANT NOTES: */,
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
                                                                                                    'c1m11jf5' /* 1. */,
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
                                                                                                        'k4me95ma' /* EMI amount does not include pr... */,
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
                                                                                                    '4e9qwatz' /* 2. */,
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
                                                                                                        'bfrhaso2' /* Foreclosure fee will be charge... */,
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
                                                                                                    'a5hs26q6' /* 3. */,
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
                                                                                                        'pnetu3vc' /* EMI amount shown above consist... */,
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
                                                                                                    'jbinf1fl' /* 4. */,
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
                                                                                                        'ay9yi2v5' /* Goods and service Tax (GST) wi... */,
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
                    ))
                      SideBarUpdateWidget(),
                    Align(
                      alignment: AlignmentDirectional(0.98, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 200),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 40,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              icon: Icon(
                                Icons.support_agent_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 18,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 40,
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                icon: Icon(
                                  Icons.screen_share_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 18,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
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
      ),
    );
  }
}
