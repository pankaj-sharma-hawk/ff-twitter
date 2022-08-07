import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _toogle = prefs.getBool('ff_toogle') ?? _toogle;
  }

  late SharedPreferences prefs;

  String dateOfBirth = '';

  bool isPhoneNumber = true;

  bool isEmailAddress = true;

  String dateAgo = '';

  bool _toogle = false;
  bool get toogle => _toogle;
  set toogle(bool _value) {
    _toogle = _value;
    prefs.setBool('ff_toogle', _value);
  }

  String radioField = '';

  String profileImage =
      'https://cdn.pixabay.com/photo/2016/01/03/00/43/upload-1118929_960_720.png';

  String wallPicture = '';

  bool localTip = false;

  DateTime? localDate;

  String localHost = '';

  String localPort = '';
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
