import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _blurCardInfo = prefs.getBool('ff_blurCardInfo') ?? _blurCardInfo;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _blurCardInfo = true;
  bool get blurCardInfo => _blurCardInfo;
  set blurCardInfo(bool _value) {
    _blurCardInfo = _value;
    prefs.setBool('ff_blurCardInfo', _value);
  }

  List<String> _companies = [
    'Dropbox',
    'DOS Networks',
    'Hybrid Systems',
    'FlutterFlow',
    'Slack',
    'StackerHQ',
    'Hello World'
  ];
  List<String> get companies => _companies;
  set companies(List<String> _value) {
    _companies = _value;
  }

  void addToCompanies(String _value) {
    _companies.add(_value);
  }

  void removeFromCompanies(String _value) {
    _companies.remove(_value);
  }

  dynamic _paymentCards = jsonDecode(
      '{\"card_number\":\"1234567890123456\",\"cvv\":\"056\",\"expiry\":\"04/26\",\"expiry_month\":\"4\",\"expiry_year\":\"2026\",\"image_path\":\"https://firebasestorage.googleapis.com/vO/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F001-icici-amazon-pay.png?alt=media&token=9360f52f-de15-4473-b70a-71cb3a541027\",\"order\":\"10\"}');
  dynamic get paymentCards => _paymentCards;
  set paymentCards(dynamic _value) {
    _paymentCards = _value;
  }

  List<String> _creditCardImages = [
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F001-icici-amazon-pay.png?alt=media&token=9360f52f-de15-4473-b70a-71cb3a541027',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F002-coral-card.png?alt=media&token=8f7ebf28-de66-4c1c-a053-0b1c560cf83f',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F003-Instant-Platinum-Bold-p-1080.png?alt=media&token=94266def-2b99-49a9-ab1e-cbf8d7afaf7b',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F004-manu-redblack.png?alt=media&token=3f959a5c-46ff-4e0c-8120-8c052df1d542',
    'https://firebasestorage.googleapis.com/v0/b/ff-custom-widgets-by-ms.appspot.com/o/credit-cards-samples%2F005-MMT-Date-Cards-01.png?alt=media&token=b15db16d-d2ab-4f24-8174-0852c18c9e39'
  ];
  List<String> get creditCardImages => _creditCardImages;
  set creditCardImages(List<String> _value) {
    _creditCardImages = _value;
  }

  void addToCreditCardImages(String _value) {
    _creditCardImages.add(_value);
  }

  void removeFromCreditCardImages(String _value) {
    _creditCardImages.remove(_value);
  }

  int _dropDownValueIndex = 0;
  int get dropDownValueIndex => _dropDownValueIndex;
  set dropDownValueIndex(int _value) {
    _dropDownValueIndex = _value;
  }

  bool _current = false;
  bool get current => _current;
  set current(bool _value) {
    _current = _value;
  }

  bool _past = false;
  bool get past => _past;
  set past(bool _value) {
    _past = _value;
  }

  bool _EMIStatus = false;
  bool get EMIStatus => _EMIStatus;
  set EMIStatus(bool _value) {
    _EMIStatus = _value;
  }

  bool _termsAndConditions = false;
  bool get termsAndConditions => _termsAndConditions;
  set termsAndConditions(bool _value) {
    _termsAndConditions = _value;
  }

  bool _paymentType = false;
  bool get paymentType => _paymentType;
  set paymentType(bool _value) {
    _paymentType = _value;
  }

  bool _autopay = false;
  bool get autopay => _autopay;
  set autopay(bool _value) {
    _autopay = _value;
  }

  bool _totalAmountDue = false;
  bool get totalAmountDue => _totalAmountDue;
  set totalAmountDue(bool _value) {
    _totalAmountDue = _value;
  }

  bool _minimumAmountDue = false;
  bool get minimumAmountDue => _minimumAmountDue;
  set minimumAmountDue(bool _value) {
    _minimumAmountDue = _value;
  }

  bool _currentOutstanding = false;
  bool get currentOutstanding => _currentOutstanding;
  set currentOutstanding(bool _value) {
    _currentOutstanding = _value;
  }

  bool _payCustomAmount = false;
  bool get payCustomAmount => _payCustomAmount;
  set payCustomAmount(bool _value) {
    _payCustomAmount = _value;
  }

  bool _today = false;
  bool get today => _today;
  set today(bool _value) {
    _today = _value;
  }

  bool _later = false;
  bool get later => _later;
  set later(bool _value) {
    _later = _value;
  }

  bool _gridValidated = false;
  bool get gridValidated => _gridValidated;
  set gridValidated(bool _value) {
    _gridValidated = _value;
  }

  dynamic _emiList = jsonDecode(
      '{\"results\":[{\"date\":\"15\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/default.png?alt=media&token=e6394325-b51a-4a1b-999a-cbd4e5723bbf\",\"remark\":\"Laskshmi Mart\",\"txnAmount\":\"4,000\",\"emiAmount\":\"165\"},{\"date\":\"14\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/BSES.png?alt=media&token=00d9f839-a2d5-490e-a86f-00844861c85f\",\"remark\":\"BSES\",\"txnAmount\":\"14,000\",\"emiAmount\":\"600\"},{\"date\":\"10\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Flipkart.png?alt=media&token=abb3aa6c-905a-4e0e-a2e2-164f88c8feaf\",\"remark\":\"Flipkart\",\"txnAmount\":\"30,000\",\"emiAmount\":\"1,275\"},{\"date\":\"09\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Apple.png?alt=media&token=6914b699-ad81-4b7b-8ab1-6839bbd928e0\",\"remark\":\"Apple\",\"txnAmount\":\"60,000\",\"emiAmount\":\"2,400\"},{\"date\":\"05\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/VODAFONE.png?alt=media&token=df39c310-b6ee-49e2-aceb-757069975bc5\",\"remark\":\"Vodafone Post...\",\"txnAmount\":\"4,000\",\"emiAmount\":\"170\"},{\"date\":\"01\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Big%20Basket.png?alt=media&token=0a40b557-38ed-41c1-9868-3e0e43f0ad07\",\"remark\":\"Big Basket\",\"txnAmount\":\"7,000\",\"emiAmount\":\"200\"},{\"date\":\"30\",\"month\":\"OCT\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Amazon.png?alt=media&token=b69b7423-242e-4d77-8d5f-50074b004d26\",\"remark\":\"Amazon\",\"txnAmount\":\"7,000\",\"emiAmount\":\"295\"},{\"date\":\"28\",\"month\":\"OCT\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Hewlett%20Packard.png?alt=media&token=e16346b4-d989-44d5-8ef1-cc03f43e0ffe\",\"remark\":\"HP\",\"txnAmount\":\"23,700\",\"emiAmount\":\"895\"},{\"date\":\"22\",\"month\":\"OCT\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Croma.png?alt=media&token=df553741-fe82-4feb-b8ab-def67479f6ef\",\"remark\":\"Croma\",\"txnAmount\":\"8,000\",\"emiAmount\":\"340\"},{\"date\":\"17\",\"month\":\"OCT\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/Indigo.png?alt=media&token=da1946d6-5415-4028-b566-9627a550c7b9\",\"remark\":\"Indigo\",\"txnAmount\":\"34,000\",\"emiAmount\":\"2,055\"}]}');
  dynamic get emiList => _emiList;
  set emiList(dynamic _value) {
    _emiList = _value;
  }

  List<dynamic> _emiItems = [
    jsonDecode(
        '{\"date\":\"15\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/default.png?alt=media&token=e6394325-b51a-4a1b-999a-cbd4e5723bbf\",\"remark\":\"Laskshmi Mart\",\"txnAmount\":\"4,000\",\"emiAmount\":\"165\"}'),
    jsonDecode(
        '{\"date\":\"15\",\"month\":\"NOV\",\"year\":\"2022\",\"image\":\"https://firebasestorage.googleapis.com/v0/b/testff-66a80.appspot.com/o/default.png?alt=media&token=e6394325-b51a-4a1b-999a-cbd4e5723bbf\",\"remark\":\"Laskshmi Mart\",\"txnAmount\":\"4,000\",\"emiAmount\":\"165\"}')
  ];
  List<dynamic> get emiItems => _emiItems;
  set emiItems(List<dynamic> _value) {
    _emiItems = _value;
  }

  void addToEmiItems(dynamic _value) {
    _emiItems.add(_value);
  }

  void removeFromEmiItems(dynamic _value) {
    _emiItems.remove(_value);
  }

  bool _initialValueCheck = false;
  bool get initialValueCheck => _initialValueCheck;
  set initialValueCheck(bool _value) {
    _initialValueCheck = _value;
  }

  bool _convertToEmiInitiated = false;
  bool get convertToEmiInitiated => _convertToEmiInitiated;
  set convertToEmiInitiated(bool _value) {
    _convertToEmiInitiated = _value;
  }

  List<String> _cardNumbers = [
    '1234 5678 9012 3456',
    '4375 5112 3456 7899',
    '4629 8668 1234 5678',
    '4375 5112 3456 7889',
    '4073 5212 3456 7890'
  ];
  List<String> get cardNumbers => _cardNumbers;
  set cardNumbers(List<String> _value) {
    _cardNumbers = _value;
  }

  void addToCardNumbers(String _value) {
    _cardNumbers.add(_value);
  }

  void removeFromCardNumbers(String _value) {
    _cardNumbers.remove(_value);
  }

  List<String> _emiTenures = ['3 months', '6 months', '9 months'];
  List<String> get emiTenures => _emiTenures;
  set emiTenures(List<String> _value) {
    _emiTenures = _value;
  }

  void addToEmiTenures(String _value) {
    _emiTenures.add(_value);
  }

  void removeFromEmiTenures(String _value) {
    _emiTenures.remove(_value);
  }

  List<String> _accountNumbers = [
    '0010020030042',
    '00112318234902',
    '00762331637193',
    '00121231823441',
    '00612318231238'
  ];
  List<String> get accountNumbers => _accountNumbers;
  set accountNumbers(List<String> _value) {
    _accountNumbers = _value;
  }

  void addToAccountNumbers(String _value) {
    _accountNumbers.add(_value);
  }

  void removeFromAccountNumbers(String _value) {
    _accountNumbers.remove(_value);
  }

  Color _negativeColor = Color(4289478206);
  Color get negativeColor => _negativeColor;
  set negativeColor(Color _value) {
    _negativeColor = _value;
  }

  bool _statementsView = true;
  bool get statementsView => _statementsView;
  set statementsView(bool _value) {
    _statementsView = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
