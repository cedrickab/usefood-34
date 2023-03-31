import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    _UserRef = prefs.getString('ff_UserRef')?.ref ?? _UserRef;
    _alert = prefs.containsKey('ff_alert')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_alert')!)
        : _alert;
    _isparticulier = prefs.getBool('ff_isparticulier') ?? _isparticulier;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _aa =
      'https://static.openfoodfacts.org/images/attributes/nutriscore-a.svg';
  String get aa => _aa;
  set aa(String _value) {
    _aa = _value;
  }

  String _bb =
      'https://static.openfoodfacts.org/images/attributes/nutriscore-b.svg';
  String get bb => _bb;
  set bb(String _value) {
    _bb = _value;
  }

  String _cc =
      'https://static.openfoodfacts.org/images/attributes/nutriscore-c.svg';
  String get cc => _cc;
  set cc(String _value) {
    _cc = _value;
  }

  String _dd =
      'https://static.openfoodfacts.org/images/attributes/nutriscore-d.svg';
  String get dd => _dd;
  set dd(String _value) {
    _dd = _value;
  }

  String _ee =
      'https://static.openfoodfacts.org/images/attributes/nutriscore-e.svg';
  String get ee => _ee;
  set ee(String _value) {
    _ee = _value;
  }

  String _recette = 'https://www.marmiton.org/recettes/recherche.aspx?aqt=';
  String get recette => _recette;
  set recette(String _value) {
    _recette = _value;
  }

  String _N1 =
      'https://static.openfoodfacts.org/images/attributes/nova-group-1.svg';
  String get N1 => _N1;
  set N1(String _value) {
    _N1 = _value;
  }

  String _N2 =
      'https://static.openfoodfacts.org/images/attributes/nova-group-2.svg';
  String get N2 => _N2;
  set N2(String _value) {
    _N2 = _value;
  }

  String _N3 =
      'https://static.openfoodfacts.org/images/attributes/nova-group-3.svg';
  String get N3 => _N3;
  set N3(String _value) {
    _N3 = _value;
  }

  String _N4 =
      'https://static.openfoodfacts.org/images/attributes/nova-group-4.svg';
  String get N4 => _N4;
  set N4(String _value) {
    _N4 = _value;
  }

  String _notif = 'https://imgur.com/a/C68F4lf';
  String get notif => _notif;
  set notif(String _value) {
    _notif = _value;
  }

  DocumentReference? _UserRef;
  DocumentReference? get UserRef => _UserRef;
  set UserRef(DocumentReference? _value) {
    _UserRef = _value;
    _value != null
        ? prefs.setString('ff_UserRef', _value.path)
        : prefs.remove('ff_UserRef');
  }

  DocumentReference? _UserRef2 = FirebaseFirestore.instance
      .doc('/user_collection/DIbwQX0sliQJ4qAwjh3PXeELFUu1');
  DocumentReference? get UserRef2 => _UserRef2;
  set UserRef2(DocumentReference? _value) {
    _UserRef2 = _value;
  }

  DateTime? _alert;
  DateTime? get alert => _alert;
  set alert(DateTime? _value) {
    _alert = _value;
    _value != null
        ? prefs.setInt('ff_alert', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_alert');
  }

  String _answer = ' ';
  String get answer => _answer;
  set answer(String _value) {
    _answer = _value;
  }

  String _imagemanu = '';
  String get imagemanu => _imagemanu;
  set imagemanu(String _value) {
    _imagemanu = _value;
  }

  bool _isparticulier = false;
  bool get isparticulier => _isparticulier;
  set isparticulier(bool _value) {
    _isparticulier = _value;
    prefs.setBool('ff_isparticulier', _value);
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
