import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:flutter/material.dart';
import 'package:taller_perez_test/Models/ListaClientes.dart';


class CargarEditarVehiculoController extends GetxController {

  String tipo;
  String marca;
  String modelo;
  String ano;
  String color;
  String matricula;
  String kilometraje;

  String accion;

  TextEditingController textTipo = new TextEditingController();
  TextEditingController textMarca = new TextEditingController();
  TextEditingController textModelo = new TextEditingController();
  TextEditingController textAno = new TextEditingController();
  TextEditingController textColor = new TextEditingController();
  TextEditingController textMatricula = new TextEditingController();
  TextEditingController textKilometraje = new TextEditingController();
  Timer mTimeOut;

  final sacaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> tiposVehiculos = ['Auto', 'Camioneta'].obs;
  

      @override
  void onInit() {
    super.onInit();

      Map<String, dynamic> arguments = Get.arguments;
      this.accion = arguments['accion'];
      this.tipo = arguments['tipo'];
      this.marca = arguments['marca'];
      this.modelo = arguments['modelo'];
      this.ano = arguments['ano'];
      this.color = arguments['color'];
      this.matricula = arguments['matricula'];
      this.kilometraje = arguments['kilometraje'];

      //Text controller
      if (this.accion == 'editar') {
        textTipo = new TextEditingController(text: tipo);
        textMarca = new TextEditingController(text: marca);
        textModelo = new TextEditingController(text: modelo);
        textAno = new TextEditingController(text: ano);
        textColor = new TextEditingController(text: color);
        textMatricula = new TextEditingController(text: matricula);
        textKilometraje = new TextEditingController(text: kilometraje);
      }
      
    
  }
}