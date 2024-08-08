import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pdfStringList =
          prefs.getStringList('ff_pdfStringList') ?? _pdfStringList;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_CarrinhoState')) {
        try {
          final serializedData = prefs.getString('ff_CarrinhoState') ?? '{}';
          _CarrinhoState =
              CarrinhoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _freteItem = prefs.getStringList('ff_freteItem')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _freteItem;
    });
    _safeInit(() {
      _indexfrete = prefs.getInt('ff_indexfrete') ?? _indexfrete;
    });
    _safeInit(() {
      _cep = prefs.getString('ff_cep') ?? _cep;
    });
    _safeInit(() {
      _pdfsCarrinhoString =
          prefs.getStringList('ff_pdfsCarrinhoString') ?? _pdfsCarrinhoString;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _pdfString = '';
  String get pdfString => _pdfString;
  set pdfString(String value) {
    _pdfString = value;
  }

  List<String> _pdfStringList = [];
  List<String> get pdfStringList => _pdfStringList;
  set pdfStringList(List<String> value) {
    _pdfStringList = value;
    prefs.setStringList('ff_pdfStringList', value);
  }

  void addToPdfStringList(String value) {
    pdfStringList.add(value);
    prefs.setStringList('ff_pdfStringList', _pdfStringList);
  }

  void removeFromPdfStringList(String value) {
    pdfStringList.remove(value);
    prefs.setStringList('ff_pdfStringList', _pdfStringList);
  }

  void removeAtIndexFromPdfStringList(int index) {
    pdfStringList.removeAt(index);
    prefs.setStringList('ff_pdfStringList', _pdfStringList);
  }

  void updatePdfStringListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pdfStringList[index] = updateFn(_pdfStringList[index]);
    prefs.setStringList('ff_pdfStringList', _pdfStringList);
  }

  void insertAtIndexInPdfStringList(int index, String value) {
    pdfStringList.insert(index, value);
    prefs.setStringList('ff_pdfStringList', _pdfStringList);
  }

  bool _Login = false;
  bool get Login => _Login;
  set Login(bool value) {
    _Login = value;
  }

  CarrinhoStruct _CarrinhoState = CarrinhoStruct();
  CarrinhoStruct get CarrinhoState => _CarrinhoState;
  set CarrinhoState(CarrinhoStruct value) {
    _CarrinhoState = value;
    prefs.setString('ff_CarrinhoState', value.serialize());
  }

  void updateCarrinhoStateStruct(Function(CarrinhoStruct) updateFn) {
    updateFn(_CarrinhoState);
    prefs.setString('ff_CarrinhoState', _CarrinhoState.serialize());
  }

  List<dynamic> _freteItem = [];
  List<dynamic> get freteItem => _freteItem;
  set freteItem(List<dynamic> value) {
    _freteItem = value;
    prefs.setStringList(
        'ff_freteItem', value.map((x) => jsonEncode(x)).toList());
  }

  void addToFreteItem(dynamic value) {
    freteItem.add(value);
    prefs.setStringList(
        'ff_freteItem', _freteItem.map((x) => jsonEncode(x)).toList());
  }

  void removeFromFreteItem(dynamic value) {
    freteItem.remove(value);
    prefs.setStringList(
        'ff_freteItem', _freteItem.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromFreteItem(int index) {
    freteItem.removeAt(index);
    prefs.setStringList(
        'ff_freteItem', _freteItem.map((x) => jsonEncode(x)).toList());
  }

  void updateFreteItemAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    freteItem[index] = updateFn(_freteItem[index]);
    prefs.setStringList(
        'ff_freteItem', _freteItem.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInFreteItem(int index, dynamic value) {
    freteItem.insert(index, value);
    prefs.setStringList(
        'ff_freteItem', _freteItem.map((x) => jsonEncode(x)).toList());
  }

  int _indexfrete = 999;
  int get indexfrete => _indexfrete;
  set indexfrete(int value) {
    _indexfrete = value;
    prefs.setInt('ff_indexfrete', value);
  }

  String _cep = '';
  String get cep => _cep;
  set cep(String value) {
    _cep = value;
    prefs.setString('ff_cep', value);
  }

  List<String> _pdfsCarrinhoString = [];
  List<String> get pdfsCarrinhoString => _pdfsCarrinhoString;
  set pdfsCarrinhoString(List<String> value) {
    _pdfsCarrinhoString = value;
    prefs.setStringList('ff_pdfsCarrinhoString', value);
  }

  void addToPdfsCarrinhoString(String value) {
    pdfsCarrinhoString.add(value);
    prefs.setStringList('ff_pdfsCarrinhoString', _pdfsCarrinhoString);
  }

  void removeFromPdfsCarrinhoString(String value) {
    pdfsCarrinhoString.remove(value);
    prefs.setStringList('ff_pdfsCarrinhoString', _pdfsCarrinhoString);
  }

  void removeAtIndexFromPdfsCarrinhoString(int index) {
    pdfsCarrinhoString.removeAt(index);
    prefs.setStringList('ff_pdfsCarrinhoString', _pdfsCarrinhoString);
  }

  void updatePdfsCarrinhoStringAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pdfsCarrinhoString[index] = updateFn(_pdfsCarrinhoString[index]);
    prefs.setStringList('ff_pdfsCarrinhoString', _pdfsCarrinhoString);
  }

  void insertAtIndexInPdfsCarrinhoString(int index, String value) {
    pdfsCarrinhoString.insert(index, value);
    prefs.setStringList('ff_pdfsCarrinhoString', _pdfsCarrinhoString);
  }

  bool _semEntrega = false;
  bool get semEntrega => _semEntrega;
  set semEntrega(bool value) {
    _semEntrega = value;
  }
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
