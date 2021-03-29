import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/Home/Controllers/tabHomeController.dart';
import 'package:taller_perez_test/Config/ExtendedClass.dart';

class TabHome extends StatelessWidget {
  BottomNavigationPageController bottomNavController =
      Get.put(BottomNavigationPageController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: BottomNavigationPageController.to.currentPage,
          bottomNavigationBar: FFNavigationBar(
            theme: FFNavigationBarTheme(
              barBackgroundColor: Colors.white,
              selectedItemBorderColor: Colors.orange,
              selectedItemBackgroundColor: Colors.orange,
              selectedItemIconColor: Colors.white,
              selectedItemLabelColor: Colors.black,
            ),
            selectedIndex: BottomNavigationPageController.to.currentIndex.value,
            onSelectTab: (index) {
              BottomNavigationPageController.to.currentIndex.value = index;
              BottomNavigationPageController.to.changePage;
            },
            items: [
              FFNavigationBarItem(
                iconData: Icons.dashboard,
                label: Text('Dashboard',
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("#718096"),
                            fontSize: 17,
                            fontWeight: FontWeight.bold))
                    .data,
              ),
              FFNavigationBarItem(
                iconData: Icons.list_alt_sharp,
                label: Text('Acciones/Listas',
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("#718096"),
                            fontSize: 17,
                            fontWeight: FontWeight.bold))
                    .data,
              ),
            ],
          ),
        ));
  }
}
