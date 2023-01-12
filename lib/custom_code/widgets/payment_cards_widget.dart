// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:c_c_module/flutter_flow/flutter_flow_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentCardsWidget extends StatefulWidget {
  const PaymentCardsWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  @override
  _PaymentCardsWidgetState createState() => _PaymentCardsWidgetState();
}

class _PaymentCardsWidgetState extends State<PaymentCardsWidget> {
  CarouselController buttonCarouselController = CarouselController();

  String? dropDownValue;
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;
  final List<String> cardItems = [
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F001-icici-amazon-pay.png?alt=media&token=9360f52f-de15-4473-b70a-71cb3a541027',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F002-coral-card.png?alt=media&token=8f7ebf28-de66-4c1c-a053-0b1c560cf83f',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F003-Instant-Platinum-Bold-p-1080.png?alt=media&token=94266def-2b99-49a9-ab1e-cbf8d7afaf7b',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F004-manu-redblack.png?alt=media&token=3f959a5c-46ff-4e0c-8120-8c052df1d542',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F005-MMT-Date-Cards-01.png?alt=media&token=b15db16d-d2ab-4f24-8174-0852c18c9e39',
  ];
  final List<String> items = [
    '** 3456',
    '** 7898',
    '** 5678',
    '** 7899',
    '** 7890',
  ];
  String? selectedValue;
  int updateIndex() {
    return items.indexOf(selectedValue!);
  }

  int imageIndex = 4;
  final int? cardWidth = 340;
  final int? cardMaxPadding = 12;
  bool show = false;

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
                      '${items.indexOf(selectedValue ?? items[0]) + 1} / 5',
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
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/logo_Bank_aloneBG@1x.png',
                                    width: 20,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF535967),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    value: selectedValue ?? items[0],
                    onChanged: (value) {
                      setState(() => selectedValue = value as String);
                      buttonCarouselController.animateToPage(
                        updateIndex(),
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    buttonHeight: 30,
                    buttonWidth: 140,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFFEBEDF6),
                    ),
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 200,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFFEBEDF6),
                    ),
                    dropdownElevation: 0,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: Offset(0, 40),
                  ),
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
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: 270,
                    child: Column(
                      children: [
                        SizedBox(
                            height: 220,
                            child: CarouselSlider.builder(
                                carouselController: buttonCarouselController,
                                itemCount: cardItems.length,
                                itemBuilder: (context, index, realIndex) {
                                  return Image.network(
                                    cardItems[index],
                                  );
                                },
                                options: CarouselOptions(
                                  height: 400,
                                  aspectRatio: 16 / 9,
                                  viewportFraction: 0.6,
                                  onPageChanged: (index, reason) {
                                    setState(
                                        () => selectedValue = items[index]);
                                  },
                                  initialPage:
                                      items.indexOf(selectedValue ?? items[0]),
                                  enableInfiniteScroll: true,
                                  reverse: false,
                                  autoPlay: false,
                                  autoPlayInterval: Duration(seconds: 3),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.3,
                                  scrollDirection: Axis.horizontal,
                                ))),
                      ],
                    )),
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
                          InkWell(
                            onTap: () => buttonCarouselController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear),
                            child: Container(
                              width: 30,
                              height: 120,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Icon(
                                Icons.chevron_left_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
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
                            InkWell(
                              onTap: () => buttonCarouselController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear),
                              child: Container(
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
            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                  child: Wrap(
                    spacing: 24,
                    runSpacing: 34,
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
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Text(
                              show ? '03/29' : '...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14,
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
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Text(
                              show ? '123' : '...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14,
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
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: FlutterSwitch(
                              activeColor: Color(0xFF3DAC75),
                              inactiveColor: Color(0xFF343A40),
                              activeText: "ON",
                              inactiveText: "OFF",
                              width: 60,
                              height: 24,
                              activeTextFontWeight: FontWeight.w500,
                              inactiveTextFontWeight: FontWeight.w500,
                              valueFontSize: 12.0,
                              toggleSize: 20,
                              value: show,
                              padding: 4,
                              borderRadius: 30.0,
                              showOnOff: true,
                              onToggle: (val) {
                                setState(() {
                                  show = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: FFButtonWidget(
                          onPressed: () async {
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
