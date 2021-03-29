import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/Init/Controllers/SplashScreenController.dart';

class SplashScreen extends StatelessWidget {
  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  Widget buildLoadingORButtonRetry() {
    if (!splashScreenController.hasInternet.value) {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: splashScreenController.connect,
                child: Container(
                    width: 400,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: new Border.all(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid),
                      //color: Colors.lightBlue
                    ),
                    child: new Text('REINTENTAR',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold))),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[loadingTask],
        ),
      );
    }
  }

  /// MAIN UI
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    gradient: LinearGradient(
                        colors: [colorApp1, colorApp1],
                        begin: Alignment.centerRight,
                        end: Alignment.bottomLeft)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 75.0,
                    child: Icon(
                      Icons.delivery_dining,
                      color: Colors.red,
                      size: 80.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Taller Perez & Perez',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              buildLoadingORButtonRetry()
            ],
          ),
        ));
  }
}
