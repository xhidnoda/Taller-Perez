import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class SharedPreferencesHelper {
  static final keyDevice = 'deviceIDKey';
  static final loginStatusKey = 'loginStatusKey';
  static final loginDataNombreKey = 'loginDataNombreKey';
  static final loginDataApellidoKey = 'loginDataApellidoKey';
  static final loginDataEmailKey = 'loginDataEmailKey';
  static final loginIdPacientaKey = 'loginIdPacientaKey';
  static String idDevice;
  static String loginStatusC;
  static String loginDataNombre;
  static String loginDataApellido;
  static String loginDataEmail;
  static String loginDataIdPaciente;

  static String mDeviceId = 'Unknown';

  /// ID DEVICE
  static Future<String> getDeviceID() async {
    final prefs = await SharedPreferences.getInstance();
    print('LOG: getInstance getDeviceID');
    final getDeviceID = await prefs.getString('keyDevice');

    if (getDeviceID == null) {
      var uuid = new Uuid();
      String deviceUUID = uuid.v1();
      prefs.setString('keyDevice', deviceUUID);
      idDevice = deviceUUID;

      return idDevice;
    }
    print('LOG: getDeviceID 3 es: ' + getDeviceID);
    idDevice = getDeviceID;
    return getDeviceID;
  }

  static deviceID() {
    return idDevice;
  }

  /// LOGIN STATUS Y DATOS
  static Future<String> setLoginStatus(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(loginStatusKey, value);
  }

  static Future<String> getLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final loginStatus = await prefs.getString(loginStatusKey);

    if (loginStatus == null) {
      prefs.setString(loginStatusKey, '0');
      loginStatusC = 'Guardando Login ahora...';
      return loginStatusC;
    } else {
      loginStatusC = loginStatus;
      return loginStatus;
    }
  }

  static Future<String> setLoginData(
      String nombres, String apellidos, String email, String idPaciente) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(loginDataNombreKey, nombres);
    prefs.setString(loginDataApellidoKey, apellidos);
    prefs.setString(loginDataEmailKey, email);
    prefs.setString(loginIdPacientaKey, idPaciente);
  }

  static Future<String> getLoginData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    loginDataNombre = prefs.getString(loginDataNombreKey) ?? 'HOLA!';
    loginDataApellido = prefs.getString(loginDataApellidoKey) ?? '  ';
    loginDataEmail = prefs.getString(loginDataEmailKey) ?? '  ';
    loginDataIdPaciente = prefs.getString(loginIdPacientaKey) ?? '  ';
    return prefs.getString(loginDataNombreKey) ?? 'vacio';
  }

  static usuarioData() {
    return loginDataNombre + ' ' + loginDataApellido;
  }

  static nameLogin() {
    return loginDataNombre;
  }

  static usuarioEmail() {
    return loginDataEmail;
  }

  static usuarioIdPaciente() {
    return loginDataIdPaciente;
  }
}
