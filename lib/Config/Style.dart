import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';

class Style {
  final VoidCallback onTap;
  final TextEditingController textController;
  Style({this.onTap, this.textController});

  static Widget buildButtonBorder(
      String titulo, Color colorBorde, Color colorTitulo, onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: new Border.all(
                  color: Colors.green, width: 2.0, style: BorderStyle.solid)),
          child: new Text(titulo,
              style: TextStyle(
                  color: colorTitulo,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold))),
    );
  }

  static Widget buildButtonFill(
      String titulo, Color colorFill, Color colorTitulo, onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: colorFill),
          child: new Text(titulo,
              style: TextStyle(
                  color: colorTitulo,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold))),
    );
  }

  static Widget builTextFieldWithTitle(
      String title, String hintText, IconData prefixIcon, textController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          //style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60.0,
          child: TextField(
            controller: textController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black45,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.black45,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black45,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// SIMPLE APPBAR
  static Widget buildSimpleAppbar(String title) {
    return AppBar(
        flexibleSpace: Container(
          color: colorApp1,
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: buildText(title, 22, Colors.white, true));
  }

  // HOME APPBAR
  static Widget buildHomeAppbar(String title) {
    return AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () => Get.snackbar('ACCION', 'Abriendo login...',colorText: Colors.white,backgroundColor: Colors.green)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [colorApp1, colorApp2])),
        ),
        centerTitle: true,
        titleSpacing: 0.0,
        elevation: 0.0,
        title: Text('Taller Perez & Perez',
            style: TextStyle(fontSize: 22.0, color: Colors.white)),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () => Get.snackbar('ACCION', 'Abriendo notificaciones...',colorText: Colors.white,backgroundColor: Colors.green)),
        ],
      );
  }


  // Build Text
  static Widget buildText(String text, double size, Color color, bool bold) {
    if (bold) {
      return Text(text,
          style: GoogleFonts.nunitoSans(
              fontSize: size, color: color, fontWeight: FontWeight.bold));
    } else {
      return Text(text,
          style: GoogleFonts.nunitoSans(
            fontSize: size,
            color: color,
          ));
    }
  }
}
