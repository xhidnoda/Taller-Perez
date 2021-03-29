import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Models/ListaClientes.dart';
import 'package:flutter/services.dart' show rootBundle;

class ListaClientesController extends GetxController {

  Cliente cliente;
  Icon iconoSeleccionar;
  bool beneficiarioSeleccionado;

  var clientesList = <Cliente>[].obs;
  int idCliente;

  @override
    void onInit() {
      super.onInit();

      EasyLoading.show(status: 'CARGANDO...');
      Timer(Duration(seconds: 2), () {
        EasyLoading.dismiss();
        readJsonListaClientes();
      });
    }


  //Leer Json de Listas de Clientes 
  Future<void> readJsonListaClientes() async {

    EasyLoading.dismiss();
    //Clientes
    final String response = await rootBundle.loadString('ListaClientes.json');
    final data = await json.decode(response);
    final items =
        (data['cliente'] as List)
            .map((index) => Cliente.fromJson(index))
            .toList();
        loadListaClientes(items);
  } 

  //Cargar clientes
  void loadListaClientes(var items) async {
      clientesList.addAll(items);
  }



}
