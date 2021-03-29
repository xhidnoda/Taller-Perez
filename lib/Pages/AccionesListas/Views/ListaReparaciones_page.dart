import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Controllers/ListaReparacionesController.dart';

class ListaReparaciones extends StatelessWidget {
  ListaReparacionesController controller =
      Get.put(ListaReparacionesController());

  Widget buildUI() {
    if (controller.reparacionesList.isEmpty) {
      return Scaffold(
        appBar: Style.buildSimpleAppbar('Reparaciones'),
      );
    } else {
      return Scaffold(
        appBar: Style.buildSimpleAppbar('Reparaciones'),
        body: SafeArea(
          child: ListView.builder(
              itemCount: controller.reparacionesList.length,
              itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        print('open detalles');
                        Get.snackbar('ACCION', 'Abriendo detalles...',colorText: Colors.white,backgroundColor: Colors.green);
                      },
                      child: Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                height: 30,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'ESTADO: ',
                                    style:TextStyle(fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: controller
                                              .reparacionesList[i].estado,
                                          style: descripcionGris),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      text: 'FECHA INGRESO: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: controller.reparacionesList[i]
                                                .fechaIngreso,
                                            style: descripcionGris),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: 'FECHA SALIDA: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: controller.reparacionesList[i]
                                                .fechaEgreso,
                                            style: descripcionGris),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Cliente', style: descripcionGris),
                                      Text(
                                          controller
                                                  .reparacionesList[i].nombres +
                                              ' ' +
                                              controller.reparacionesList[i]
                                                  .apellidos,
                                          style: tipoReserva),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Vehículo', style: descripcionGris),
                                      Text(
                                          controller.reparacionesList[i]
                                                  .vehiculo.marca +
                                              ' ' +
                                              controller.reparacionesList[i]
                                                  .vehiculo.modelo,
                                          style: tipoReserva),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Text('Descripción del servicio',
                                      style: tipoReserva),
                                  Text(
                                      controller.reparacionesList[i]
                                          .detalleReparacion.casoDescripcion,
                                      style: descripcionGris),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                   Column(
                                    children: [
                                      Text('Monto repuesto', style: tipoReserva),
                                      Text(controller.reparacionesList[i].detalleReparacion.montoRepuesto + ' ' + controller.reparacionesList[i].detalleReparacion.moneda, style: descripcionGris),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Repuesto', style: tipoReserva),
                                      Text(controller.reparacionesList[i].detalleReparacion.repuestoComprado, style: descripcionGris),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('Monto total', style: tipoReserva),
                                      Text(controller.reparacionesList[i].detalleReparacion.montoTotal + ' ' + controller.reparacionesList[i].detalleReparacion.moneda, style: descripcionGris),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => buildUI());
  }
}
