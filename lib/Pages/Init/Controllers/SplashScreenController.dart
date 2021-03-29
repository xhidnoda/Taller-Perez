import 'package:taller_perez_test/Config/DefaultImport.dart';
//import 'package:healthcare/Pages/Home/Home_page.dart';
import 'package:taller_perez_test/Pages/Home/Views/BottomNavigation_page.dart';

class SplashScreenController extends GetxController {
  String deviceID;
  String statusLogin;
  String nombreYapellido;
  Timer mTimeOut;
  var hasInternet = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    setupAppPreferences();
  }

  void setupAppPreferences() async {
    deviceID = await SharedPreferencesHelper.getDeviceID();
    statusLogin = await SharedPreferencesHelper.getLoginStatus();
    nombreYapellido = await SharedPreferencesHelper.getLoginData();

    /*new Future.delayed(new Duration(seconds: 1), () {
      connect();
    });*/

    // Luego de 2 segundos controlamos el estado de conexión al MQTT
    new Future.delayed(new Duration(seconds: 2), () {
      print('LOG: device: ' + SharedPreferencesHelper.deviceID());
      print('LOG: Login status: ' + statusLogin);
      print('LOG: NOMBRES: ' + nombreYapellido);

      connect();

      new Future.delayed(new Duration(seconds: 3), () {
        callHomeScreen();
      });
    });
  }

  void connect() {
    checkNetworkAvailable().then((onValue) {
      if (onValue) {
        print('LOG: TRATANDO DE CONECTAR...');
        hasInternet.value = true;
      } else {
        print('LOG: ERROR AL CONECTAR A INTERNET...');
        hasInternet.value = false;
      }
    });
  }

  void callHomeScreen() {
    Get.to(TabHome());
  }
}
