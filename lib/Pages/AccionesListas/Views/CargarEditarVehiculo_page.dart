import 'dart:html';

import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Controllers/CargarEditarVehiculoController.dart';

class CargarEditarVehiculo extends StatelessWidget {
  CargarEditarVehiculoController controller =
      Get.put(CargarEditarVehiculoController());

  @override
  Widget build(BuildContext context) {
    
    //Tipo
    Widget _buildTipoField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textTipo,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese el tipo de vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'TIPO',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Marca
    Widget _buildMarcaField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textMarca,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese la marca del vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'MARCA',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Modelo
    Widget _buildModeloField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textModelo,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese el modelo del vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'MODELO',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Ano
    Widget _buildAnoField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textAno,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese el año del vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'AÑO',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Color
    Widget _buildColorField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textColor,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese el color del vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'COLOR',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Matricula
    Widget _buildMatriculaField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textMatricula,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese la matricula del vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'MATRICULA',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Kilometraje
    Widget _buildKilometrajeField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textKilometraje,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese el kilometraje del vehículo';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'KM',
            labelStyle: GoogleFonts.nunitoSans(
                fontSize: 15,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    //Botón guardar
    Widget _buildGuardarBtn() {
      return Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Builder(
          // Create an inner BuildContext so that the onPressed methods
          // can refer to the Scaffold with Scaffold.of().
          builder: (BuildContext context) {
            return Center(
                child: RawMaterialButton(
              onPressed: () {
                Get.snackbar('GUARDADO', 'REGISTRAD CORRECTAMENTE', colorText: Colors.white, backgroundColor: Colors.green);
              },
              child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.green,
                    border: new Border.all(
                        color: Colors.white,
                        width: 2.0,
                        style: BorderStyle.solid),
                    //color: Colors.lightBlue
                  ),
                  child: new Text('GUARDAR', style: botonOK)),
            ));
          },
        ),
      );
    }

    Widget _buildCancelarBtn() {
      return Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Builder(
          // Create an inner BuildContext so that the onPressed methods
          // can refer to the Scaffold with Scaffold.of().
          builder: (BuildContext context) {
            return Center(
                child: RawMaterialButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Container(
                  width: double.infinity,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red,
                    border: new Border.all(
                        color: Colors.white,
                        width: 2.0,
                        style: BorderStyle.solid),
                    //color: Colors.lightBlue
                  ),
                  child: new Text('CANCELAR', style: botonOK)),
            ));
          },
        ),
      );
    }

    //Conjunto de Botones
    Widget _BuildBtn() {
      return Row(
        children: <Widget>[
          Expanded(child: _buildCancelarBtn()),
          Expanded(child: _buildGuardarBtn()),
        ],
      );
    }

    Widget _formUI() {
      return Form(
        key: controller.formKey,
        child: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Style.buildText(
                    'Datos del Vehículo', 17, Colors.black, true)),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    _buildTipoField(),
                    _buildMarcaField(),
                    _buildModeloField(),
                    _buildAnoField(),
                    _buildColorField(),
                    _buildMatriculaField(),
                    _buildKilometrajeField()
 
                  ],
                ),
              ),
            ),
   
            _BuildBtn()
          ],
        ),
      );
    }

    Widget buildUI() {
      return Scaffold(
        appBar: Style.buildSimpleAppbar(
          controller.tipo == 'cargar' ? 'Cargar vehículo' : 'Editar vehículo',
        ),
        body: Padding(padding: const EdgeInsets.all(8.0), child: _formUI()),
      );
    }

    return buildUI();
    
    
  }
}
