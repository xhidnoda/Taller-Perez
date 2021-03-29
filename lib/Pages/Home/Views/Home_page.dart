import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/ConstantsProject.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Style.buildHomeAppbar('Taller Perez & Perez'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Style.buildText('Lunes 29 Marzo 2021', 22, Colors.grey, true),
              Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText('En reparacion', 17, Colors.black, true),
                            Style.buildText('3', 17, Colors.red, true),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText('Entregados', 17, Colors.black, true),
                            Style.buildText('5', 17, Colors.green, true),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText('Ingresados', 17, Colors.black, true),
                            Style.buildText('2', 17, Colors.orange, true),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText(
                                'Monto facturado', 17, Colors.black, true),
                            Style.buildText('USD 4.300', 17, Colors.green, true),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText(
                                'Monto a facturar', 17, Colors.black, true),
                            Style.buildText('USD 500', 17, Colors.orange, true),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Style.buildText('Registros totales', 22, Colors.grey, true),

              Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText('Clientes', 17, Colors.black, true),
                            Style.buildText('72', 17, Colors.red, true),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText('Vehículos', 17, Colors.black, true),
                            Style.buildText('85', 17, Colors.green, true),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText(
                                'Monto facturado', 17, Colors.black, true),
                            Style.buildText('USD 23.000', 17, Colors.green, true),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Style.buildText(
                                'Monto a facturar', 17, Colors.black, true),
                            Style.buildText('USD 1.400', 17, Colors.orange, true),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
