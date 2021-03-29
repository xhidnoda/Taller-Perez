import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Controllers/ListaClientesController.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Views/DetallesCliente_page.dart';

class ListaClientes extends StatelessWidget {

   ListaClientesController controller = Get.put(ListaClientesController());

  @override
  Widget build(BuildContext context) {
       return Obx(() => Scaffold(
          appBar: Style.buildSimpleAppbar('Mis clientes'),
                body: SafeArea(
            child: ListView.builder(
              itemCount: controller.clientesList.length,
              itemBuilder: (context, i) => new Column(
                children: <Widget>[
                  Divider(
                    height: 10.0,
                  ),
    
                  ListTile(
    
                  onTap: () {
                    print('tap tap a detalle');
                  Get.to(() => DetallesCliente(), 
                  arguments: {'tipo' : 'editar',
                              'cliente' : controller.clientesList[i],
                              'idCliente' : controller.idCliente});


                },

                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child:  Icon(Icons.person, color: Colors.white,),
                ),
                trailing:  Icon(Icons.arrow_forward_ios),
                title: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.8),
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                    ),
                    text:  controller.clientesList[i].nombres + ' ' + controller.clientesList[i].apellidos,
                  ),
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: RichText(
                    text: TextSpan(
                      style: labelStyleForDescripcion,
                      text: 'CI: ' + controller.clientesList[i].documento.numeroDocumento,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.person_add,
          color: Colors.white,
        ),
        onPressed: () {
          print('Abrir nuevo cliente');
           Get.to(() => DetallesCliente(), arguments: {'tipo' : 'cargar'});
        },
      )
    ));
  }
}