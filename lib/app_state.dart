import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  String _loginame = '';
  String get loginame => _loginame;
  set loginame(String _value) {
    _loginame = _value;
  }

  String _uid = '';
  String get uid => _uid;
  set uid(String _value) {
    _uid = _value;
  }

  String _tokenuser = '';
  String get tokenuser => _tokenuser;
  set tokenuser(String _value) {
    _tokenuser = _value;
  }

  String _tokentimeout = '';
  String get tokentimeout => _tokentimeout;
  set tokentimeout(String _value) {
    _tokentimeout = _value;
  }

  final _getuserinfoManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> getuserinfo({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _getuserinfoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetuserinfoCache() => _getuserinfoManager.clear();
  void clearGetuserinfoCacheKey(String? uniqueKey) =>
      _getuserinfoManager.clearRequest(uniqueKey);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
