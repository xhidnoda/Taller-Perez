import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Views/ListaClientes_page.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Views/ListaReparaciones_page.dart';

class Listas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Style.buildHomeAppbar('Listas'),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => ListaClientes());
            },
            child: Card(
                elevation: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 7,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5))),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Style.buildText(
                            'Mis clientes', sizeTextTitle, colorText, true)),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => ListaReparaciones());
            },
            child: Card(
                elevation: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 7,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(5))),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Style.buildText(
                            'Lista de reparaciones', sizeTextTitle, colorText, true)),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
