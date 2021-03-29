import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Models/ListaClientes.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Controllers/DetalleClienteController.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Views/CargarEditarVehiculo_page.dart';

class DetallesCliente extends StatelessWidget {
  DetalleClienteController controller = Get.put(DetalleClienteController());

  @override
  Widget build(BuildContext context) {
    //WIDGETS
    //Nombre
    Widget _buildNombreField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textNombre,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese su nombre';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'NOMBRE',
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

    //Apellido
    Widget _buildApellidoField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textApellido,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese su apellido';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'APELLIDO',
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

    //Número documento
    Widget _buildNroDocumentoField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textNroDocumento,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            //labelText: 'NÚMERO',
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

    //Documento
    Widget _buildDocumento() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: new Border.all(
                        color: Colors.deepOrangeAccent,
                        width: 1.0,
                        style: BorderStyle.solid),
                    //color: Colors.lightBlue
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(
                          'CI',
                          style: labelStyleTituloBeneficiario,
                        ),
                        style: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                        value: controller.selectedTipoDoc.value,
                        onChanged: (newValue) {
                          controller.selectedTipoDoc.value = newValue;
                        },
                        items: controller.tiposDocumentos.map((tipos) {
                          return DropdownMenuItem(
                            child: new Text(
                              tipos,
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 15,
                                  color: Colors.deepOrangeAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                            value: tipos,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child:
                      Container(height: 50, child: _buildNroDocumentoField()),
                )
              ],
            ),
          ),
        ],
      );
    }

    //Teléfono
    Widget _buildTelefonoField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textTelefono,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese su teléfono';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'TELÉFONO',
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

    //Mail
    Widget _buildMailField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textMail,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese su e-mail';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'E-MAIL',
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

    //Dirección
    Widget _buildDireccionField() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: controller.textDireccion,
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value.isEmpty) {
              return 'Por favor ingrese su dirección';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            labelText: 'DIRECCIÓN',
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

    //Sexo
    Widget _buildOpcionesSexo() {
      return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Masculino',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 15,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold),
                ),
                Radio(
                  value: 0,
                  groupValue: controller.radioValue.value,
                  onChanged: controller.handleRadioValueChange,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Femenino',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 15,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold),
                ),
                Radio(
                  value: 1,
                  groupValue: controller.radioValue.value,
                  onChanged: controller.handleRadioValueChange,
                ),
              ],
            ),
          ],
        ),
      );
    }

    //Listar Vehiculos
    Widget listarVehiculos(String tipo, String marca, String modelo, String ano,
        String color, String matricula, String kilometraje) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Tipo: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: tipo, style: descripcionGris),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Marca: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: marca, style: descripcionGris),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Modelo: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: modelo, style: descripcionGris),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Año: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: ano, style: descripcionGris),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Matrícula: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: matricula, style: descripcionGris),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Kilometraje: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(text: kilometraje, style: descripcionGris),
                      ],
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    print('editar este vehículo...');

                    Get.to(() => CargarEditarVehiculo(), arguments: {
                      'accion': 'editar',
                      'tipo': tipo,
                      'marca': marca,
                      'modelo': modelo,
                      'ano': ano,
                      'color': color,
                      'matricula': matricula,
                      'kilometraje': kilometraje
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      textStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  child: Text('Editar este vehículo'))
            ],
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
                Get.snackbar('GUARDADO', 'REGISTRAD CORRECTAMENTE',colorText: Colors.white, backgroundColor: Colors.green);
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

    Widget _buildListaVehiculos() {
      return Card(
        elevation: 8.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              for (var item in controller.cliente.vehiculos)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: listarVehiculos(item.tipo, item.marca, item.modelo,
                      item.ano, item.color, item.matricula, item.kilometraje),
                ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    print('cargar otro vehículo...');
                    Get.to(() => CargarEditarVehiculo(),
                        arguments: {'accion': 'cargar'});
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      textStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  child: Text('Cargar nuevo vehículo'))
            ],
          ),
        ),
      );
    }

    //Formulario completo
    Widget _formUI() {
      return Form(
        key: controller.formKey,
        child: ListView(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Style.buildText(
                    'Datos personales', 17, Colors.black, true)),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    _buildNombreField(),
                    _buildApellidoField(),
                    _buildOpcionesSexo(),
                    _buildDocumento(),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Style.buildText(
                    'Datos de contacto', 17, Colors.black, true)),
            Card(
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    _buildTelefonoField(),
                    _buildMailField(),
                    _buildDireccionField(),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Style.buildText('Vehículos', 17, Colors.black, true)
            ),
            
            if(controller.tipo == 'editar')
              _buildListaVehiculos(),

              ElevatedButton(
                  onPressed: () {
                    print('cargar otro vehículo...');
                    Get.to(() => CargarEditarVehiculo(),
                        arguments: {'accion': 'cargar'});
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      textStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  child: Text('Cargar nuevo vehículo')),

            _BuildBtn()
          ],
        ),
      );
    }

    Widget buildUI() {
      return Scaffold(
        appBar: Style.buildSimpleAppbar(
          controller.tipo == 'cargar' ? 'Cargar Cliente' : 'Editar Cliente',
        ),
        body: Padding(padding: const EdgeInsets.all(8.0), child: _formUI()),
      );
    }

    return Obx(() => buildUI());
  }
}
