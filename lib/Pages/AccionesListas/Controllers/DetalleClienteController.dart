import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:flutter/material.dart';
import 'package:taller_perez_test/Models/ListaClientes.dart';
import 'package:flutter/services.dart' show rootBundle;


class DetalleClienteController extends GetxController {

  String tipo;
  int idCliente;
  Cliente cliente;

  TextEditingController textNombre = new TextEditingController();
  TextEditingController textApellido = new TextEditingController();
  TextEditingController textNroDocumento = new TextEditingController();
  TextEditingController textTelefono = new TextEditingController();
  TextEditingController textDireccion = new TextEditingController();
  TextEditingController textMail = new TextEditingController();
  Timer mTimeOut;

  final sacaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> tiposDocumentos = ['CI', 'RUC', 'DNI'].obs;
  var selectedTipoDoc = 'CI'.obs;
  var selectedSexo = 'M'.obs;
  var radioValue = 0.obs;


    @override
  void onInit() {
    super.onInit();

      Map<String, dynamic> arguments = Get.arguments;
      this.tipo = arguments['tipo'];
      this.idCliente = arguments['idCliente'];
      this.cliente = arguments['cliente'];

    if (this.tipo  == 'editar') {

      textNombre = new TextEditingController(text: cliente.nombres);
      textApellido = new TextEditingController(text: cliente.apellidos);
      textNroDocumento = new TextEditingController(text: cliente.documento.numeroDocumento);
      textTelefono = new TextEditingController(text: cliente.telefono);
      textMail = new TextEditingController(text: cliente.email);
      textDireccion = new TextEditingController(text: cliente.direccion);

      if (cliente.sexo == 'M') {
        radioValue.value = 0;
      } else {
        radioValue.value = 1;
      }
    } 
  }

  


  //Handle Change Radio value
  void handleRadioValueChange(int value) {
      radioValue.value = value;

      switch (radioValue.value) {
        case 0:
          selectedSexo.value = "M";
          print('case 0');
          break;
        case 1:
          selectedSexo.value = "F";
          print('buscar por tipo');
          break;
      }
  }

}