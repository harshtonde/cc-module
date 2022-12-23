import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopHeaderMobileWidget extends StatefulWidget {
  const TopHeaderMobileWidget({Key? key}) : super(key: key);

  @override
  _TopHeaderMobileWidgetState createState() => _TopHeaderMobileWidgetState();
}

class _TopHeaderMobileWidgetState extends State<TopHeaderMobileWidget> {
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
      height: 70,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://image.shutterstock.com/mosaic_250/2780032/1194497251/stock-photo-portrait-of-smiling-red-haired-millennial-man-looking-at-camera-sitting-in-caf-or-coffeeshop-1194497251.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                if (Theme.of(context).brightness == Brightness.light)
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/icici_Bank_onLight@1x.png',
                      height: 30,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: const CircleBorder(),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        shape: BoxShape.circle,
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: 34,
                        height: 34,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/iplay-logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Badge(
                    badgeContent: Text(
                      FFLocalizations.of(context).getText(
                        'bonk07wj' /* 7 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: Colors.white,
                            fontSize: 10,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
                    showBadge: true,
                    shape: BadgeShape.circle,
                    badgeColor: FlutterFlowTheme.of(context).secondaryColor,
                    elevation: 4,
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    position: BadgePosition.topEnd(),
                    animationType: BadgeAnimationType.scale,
                    toAnimate: true,
                    child: Icon(
                      Icons.notifications_rounded,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      size: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 40,
                    icon: Icon(
                      Icons.menu,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
