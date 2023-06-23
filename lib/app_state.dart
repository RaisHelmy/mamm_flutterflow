import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _subzone = prefs.getStringList('ff_subzone')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _subzone;
    });
    _safeInit(() {
      _zone = prefs.getStringList('ff_zone')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _zone;
    });
    _safeInit(() {
      _substation = prefs.getStringList('ff_substation')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _substation;
    });
    _safeInit(() {
      _bay = prefs.getStringList('ff_bay')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _bay;
    });
    _safeInit(() {
      _primarysecondary = prefs.getStringList('ff_primarysecondary')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _primarysecondary;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  List<dynamic> _subzone = [];
  List<dynamic> get subzone => _subzone;
  set subzone(List<dynamic> _value) {
    _subzone = _value;
    prefs.setStringList(
        'ff_subzone', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToSubzone(dynamic _value) {
    _subzone.add(_value);
    prefs.setStringList(
        'ff_subzone', _subzone.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSubzone(dynamic _value) {
    _subzone.remove(_value);
    prefs.setStringList(
        'ff_subzone', _subzone.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSubzone(int _index) {
    _subzone.removeAt(_index);
    prefs.setStringList(
        'ff_subzone', _subzone.map((x) => jsonEncode(x)).toList());
  }

  void updateSubzoneAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _subzone[_index] = updateFn(_subzone[_index]);
    prefs.setStringList(
        'ff_subzone', _subzone.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _zone = [];
  List<dynamic> get zone => _zone;
  set zone(List<dynamic> _value) {
    _zone = _value;
    prefs.setStringList('ff_zone', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToZone(dynamic _value) {
    _zone.add(_value);
    prefs.setStringList('ff_zone', _zone.map((x) => jsonEncode(x)).toList());
  }

  void removeFromZone(dynamic _value) {
    _zone.remove(_value);
    prefs.setStringList('ff_zone', _zone.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromZone(int _index) {
    _zone.removeAt(_index);
    prefs.setStringList('ff_zone', _zone.map((x) => jsonEncode(x)).toList());
  }

  void updateZoneAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _zone[_index] = updateFn(_zone[_index]);
    prefs.setStringList('ff_zone', _zone.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _substation = [];
  List<dynamic> get substation => _substation;
  set substation(List<dynamic> _value) {
    _substation = _value;
    prefs.setStringList(
        'ff_substation', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToSubstation(dynamic _value) {
    _substation.add(_value);
    prefs.setStringList(
        'ff_substation', _substation.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSubstation(dynamic _value) {
    _substation.remove(_value);
    prefs.setStringList(
        'ff_substation', _substation.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSubstation(int _index) {
    _substation.removeAt(_index);
    prefs.setStringList(
        'ff_substation', _substation.map((x) => jsonEncode(x)).toList());
  }

  void updateSubstationAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _substation[_index] = updateFn(_substation[_index]);
    prefs.setStringList(
        'ff_substation', _substation.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _bay = [];
  List<dynamic> get bay => _bay;
  set bay(List<dynamic> _value) {
    _bay = _value;
    prefs.setStringList('ff_bay', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToBay(dynamic _value) {
    _bay.add(_value);
    prefs.setStringList('ff_bay', _bay.map((x) => jsonEncode(x)).toList());
  }

  void removeFromBay(dynamic _value) {
    _bay.remove(_value);
    prefs.setStringList('ff_bay', _bay.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromBay(int _index) {
    _bay.removeAt(_index);
    prefs.setStringList('ff_bay', _bay.map((x) => jsonEncode(x)).toList());
  }

  void updateBayAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _bay[_index] = updateFn(_bay[_index]);
    prefs.setStringList('ff_bay', _bay.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _primarysecondary = [];
  List<dynamic> get primarysecondary => _primarysecondary;
  set primarysecondary(List<dynamic> _value) {
    _primarysecondary = _value;
    prefs.setStringList(
        'ff_primarysecondary', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToPrimarysecondary(dynamic _value) {
    _primarysecondary.add(_value);
    prefs.setStringList('ff_primarysecondary',
        _primarysecondary.map((x) => jsonEncode(x)).toList());
  }

  void removeFromPrimarysecondary(dynamic _value) {
    _primarysecondary.remove(_value);
    prefs.setStringList('ff_primarysecondary',
        _primarysecondary.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromPrimarysecondary(int _index) {
    _primarysecondary.removeAt(_index);
    prefs.setStringList('ff_primarysecondary',
        _primarysecondary.map((x) => jsonEncode(x)).toList());
  }

  void updatePrimarysecondaryAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _primarysecondary[_index] = updateFn(_primarysecondary[_index]);
    prefs.setStringList('ff_primarysecondary',
        _primarysecondary.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _listequipmentbyserialno = [];
  List<dynamic> get listequipmentbyserialno => _listequipmentbyserialno;
  set listequipmentbyserialno(List<dynamic> _value) {
    _listequipmentbyserialno = _value;
  }

  void addToListequipmentbyserialno(dynamic _value) {
    _listequipmentbyserialno.add(_value);
  }

  void removeFromListequipmentbyserialno(dynamic _value) {
    _listequipmentbyserialno.remove(_value);
  }

  void removeAtIndexFromListequipmentbyserialno(int _index) {
    _listequipmentbyserialno.removeAt(_index);
  }

  void updateListequipmentbyserialnoAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _listequipmentbyserialno[_index] =
        updateFn(_listequipmentbyserialno[_index]);
  }

  dynamic _alluserinfo;
  dynamic get alluserinfo => _alluserinfo;
  set alluserinfo(dynamic _value) {
    _alluserinfo = _value;
  }

  List<dynamic> _objecttype = [];
  List<dynamic> get objecttype => _objecttype;
  set objecttype(List<dynamic> _value) {
    _objecttype = _value;
  }

  void addToObjecttype(dynamic _value) {
    _objecttype.add(_value);
  }

  void removeFromObjecttype(dynamic _value) {
    _objecttype.remove(_value);
  }

  void removeAtIndexFromObjecttype(int _index) {
    _objecttype.removeAt(_index);
  }

  void updateObjecttypeAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _objecttype[_index] = updateFn(_objecttype[_index]);
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
