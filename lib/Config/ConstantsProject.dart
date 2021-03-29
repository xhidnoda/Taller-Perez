import 'dart:ui';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

import 'package:taller_perez_test/Config/ExtendedClass.dart';


///PARA OBTENER EL ID DEL CEL
final String os = Platform.operatingSystem;

/// COLORES DE LA APP
final Color colorApp1 = Colors.orange;
final Color colorApp2 = Colors.orangeAccent;
final Color colorText = Colors.black45;


/// TAMANOS DE TEXTOS
final double sizeText = 17;
final double sizeTextTitle = 20;

/// LABEL AND HIT TEXT STYLE
final hintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final labelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final labelOrangeStyle = TextStyle(
  color: Colors.orange,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final labelStyleBlack = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

//Botones
final labelStyleForBtnWhite = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final labelStyleForBtnBlack = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

//Titulos
final labelStyleForTitleWhite = TextStyle(
  color: Colors.white,
  fontSize: 22,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final labelStyleForTitleBlack = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final labelStyleForTitleBlackOpacity = TextStyle(
    color: Colors.black87.withOpacity(0.8),
    fontSize: 24,
    fontWeight: FontWeight.w600);

final labelStyleForSubTitleBlackOpacity = TextStyle(
    color: Colors.black87.withOpacity(0.8),
    fontSize: 20,
    fontWeight: FontWeight.w600);

final labelStyleForDescripcion =
    TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w600);

final labelStyleForDescripcionWhite =
    TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600);

final labelStyleForPrice = TextStyle(
    color: Colors.deepOrangeAccent, fontSize: 20, fontWeight: FontWeight.w600);

final labelStyleTituloBeneficiario = TextStyle(
    color: Colors.deepOrangeAccent, fontSize: 20, fontWeight: FontWeight.w600);

//TODO: Fonts and color text
final navigatorTitulo = GoogleFonts.nunitoSans(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
final botonOK = GoogleFonts.nunitoSans(
    fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold);
final botonCancel = GoogleFonts.nunitoSans(
    fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold);
final tituloNegro = GoogleFonts.roboto(
    fontSize: 15, color: HexColor("#383a3a"), fontWeight: FontWeight.bold);
final subTituloNegro = GoogleFonts.roboto(
    fontSize: 15, color: HexColor("#383a3a"), fontWeight: FontWeight.bold);
final descripcionGris = GoogleFonts.roboto(fontSize: 15, color: Colors.grey);
final precioServicio =
    GoogleFonts.roboto(fontSize: 15, color: HexColor("#ea6d30"));
final tipoReserva = GoogleFonts.nunitoSans(
    fontSize: 15, color: Colors.orange, fontWeight: FontWeight.bold);

/// BOX DECORATION
final boxDecorationStyle = BoxDecoration(
  color: Colors.orange,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

/// LOADING PARA LA APP
final Object loadingTask = SpinKitThreeBounce(color: Colors.white);
final Object loadingImage = SpinKitThreeBounce(color: Colors.black12);
final Object loadingCircle = SpinKitCircle(color: Colors.white);

//TODO: FORMATOS DE FECHA
DateTime now = DateTime.now();
String formattedDate = DateFormat('yyyy-MM-dd hh:mm').format(now);
final formatedDateNormal = DateFormat('dd-MM-yyyy');
final formatedDate = DateFormat('dd MMM. yyyy');

// TODO: Enums
enum Paginas { dashboard, consultas, acciones }

/// OPCIONES PARA BENEFICIARIOS

class OpcionesBeneficiarios {
  static String Editar = 'Editar';
  static String Eliminar = 'Eliminar';

  static final List<String> lista = <String>[Editar, Eliminar];
}


/// VALOR DEL BUTTOMNAVIGATIONBAR
var selectNavBarItem = 0;

/// HACER REQUEST INICIAL EN EL DASHBOARD
var hacerRequestDashboard = true;
//ConsultaDashboardResponse respuestaCompleta;

const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const Color kActiveCardColor = Color(0xFF1D1E33);

void tamanoPantalla(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
  } else {}
}


 Future<bool> checkNetworkAvailable() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.index == ConnectivityResult.none.index) {
      return false;
    }
    return true;

  }

  ///Para validarString
  bool validateString(String value) {
    return !(value == null || value.isEmpty || value == 'null' || value == '');
  }