import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:freerasp/utils/hash_converter.dart';
import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/nav/nav.dart';
import 'package:freerasp/talsec_app.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  final appState = FFAppState(); // Initialize FFAppState

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);

    Future.delayed(Duration(seconds: 1),
        () => setState(() => _appStateNotifier.stopShowingSplashImage()));

    if (!kIsWeb) {
      TalsecCallback callback = TalsecCallback(
        // For Android
        androidCallback: AndroidCallback(
          onRootDetected: () => FFAppState().rootDetected = true,
          onEmulatorDetected: () => FFAppState().emulatorDetected = true,
          onHookDetected: () => FFAppState().hookDetected = true,
          onTamperDetected: () => FFAppState().tamperDetected = true,
          onDeviceBindingDetected: () => FFAppState().devicebindingDetected = true,
          onUntrustedInstallationDetected: () => FFAppState().untrustedInstallationDetected = true,
        ),
        // For iOS
        onDebuggerDetected: () => print('debugger'),
      );
      // Signing hash of your app
      String base64Hash = hashConverter.fromSha256toBase64(
          "DB:25:C0:6D:21:F8:3D:D8:46:2B:BF:EC:7A:EC:7D:8E:EF:DB:84:6E:97:0E:E8:C9:23:1B:58:17:66:3D:6E:57");
      TalsecConfig config = TalsecConfig(
        // For Android
        androidConfig: AndroidConfig(
          expectedPackageName: 'com.icici.ccmodule',
          expectedSigningCertificateHash: base64Hash,
          supportedAlternativeStores: ["com.sec.android.app.samsungapps"],
        ),

        // For iOS
        // iosConfig: IOSconfig(
        //   appBundleId: 'YOUR_APP_BUNDLE_ID',
        //   appTeamId: 'YOUR_APP_TEAM_ID',
        // ),

        // Common email for Alerts and Reports
        watcherMail: 'your_mail@example.com',
      );
      TalsecApp app = TalsecApp(
        config: config,
        callback: callback,
      );

      app.start();
    }
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CC Module',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
        Locale('hi'),
        Locale('bn'),
        Locale('mr'),
        Locale('ta'),
        Locale('or'),
        Locale('de'),
        Locale('ur'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
