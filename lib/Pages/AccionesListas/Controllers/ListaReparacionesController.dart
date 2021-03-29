import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Models/ListaClientes.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:taller_perez_test/Models/ListaReparaciones.dart';


class ListaReparacionesController extends GetxController {


  Cliente cliente;
  Icon iconoSeleccionar;
  bool beneficiarioSeleccionado;

  var reparacionesList = <Reparaciones>[].obs;
  int idCliente;
  
@override
    void onInit() {
      super.onInit();

      EasyLoading.show(status: 'CARGANDO...');
      Timer(Duration(seconds: 2), () {
        EasyLoading.dismiss();
        readJsonListaReparaciones();
      });
    }


  //Leer Json de Listas de Reparaciones 
  Future<void> readJsonListaReparaciones() async {

    EasyLoading.dismiss();
    //Clientes
    final String response = await rootBundle.loadString('ListaReparaciones.json');
    final data = await json.decode(response);
    final items =
        (data['reparaciones'] as List)
            .map((index) => Reparaciones.fromJson(index))
            .toList();
        loadListaReparaciones(items);
  } 

  //Cargar clientes
  void loadListaReparaciones(var items) async {
      reparacionesList.addAll(items);
  }

}
