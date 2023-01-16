import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

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
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _SurveyStepNumber = 2;
  int get SurveyStepNumber => _SurveyStepNumber;
  set SurveyStepNumber(int _value) {
    _SurveyStepNumber = _value;
  }

  String _SurveyResponseName = '';
  String get SurveyResponseName => _SurveyResponseName;
  set SurveyResponseName(String _value) {
    _SurveyResponseName = _value;
  }

  String _SurveyResponseEmail = '';
  String get SurveyResponseEmail => _SurveyResponseEmail;
  set SurveyResponseEmail(String _value) {
    _SurveyResponseEmail = _value;
  }

  List<DocumentReference> _SurveyResponseGenres = [];
  List<DocumentReference> get SurveyResponseGenres => _SurveyResponseGenres;
  set SurveyResponseGenres(List<DocumentReference> _value) {
    _SurveyResponseGenres = _value;
  }

  void addToSurveyResponseGenres(DocumentReference _value) {
    _SurveyResponseGenres.add(_value);
  }

  void removeFromSurveyResponseGenres(DocumentReference _value) {
    _SurveyResponseGenres.remove(_value);
  }

  List<DocumentReference> _SurveyResponsePerspectives = [];
  List<DocumentReference> get SurveyResponsePerspectives =>
      _SurveyResponsePerspectives;
  set SurveyResponsePerspectives(List<DocumentReference> _value) {
    _SurveyResponsePerspectives = _value;
  }

  void addToSurveyResponsePerspectives(DocumentReference _value) {
    _SurveyResponsePerspectives.add(_value);
  }

  void removeFromSurveyResponsePerspectives(DocumentReference _value) {
    _SurveyResponsePerspectives.remove(_value);
  }

  List<DocumentReference> _SurveyResponseInstruments = [];
  List<DocumentReference> get SurveyResponseInstruments =>
      _SurveyResponseInstruments;
  set SurveyResponseInstruments(List<DocumentReference> _value) {
    _SurveyResponseInstruments = _value;
  }

  void addToSurveyResponseInstruments(DocumentReference _value) {
    _SurveyResponseInstruments.add(_value);
  }

  void removeFromSurveyResponseInstruments(DocumentReference _value) {
    _SurveyResponseInstruments.remove(_value);
  }

  int _SignupStep = 1;
  int get SignupStep => _SignupStep;
  set SignupStep(int _value) {
    _SignupStep = _value;
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
