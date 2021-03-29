import 'package:flutter/material.dart';
import 'package:taller_perez_test/Config/DefaultImport.dart';
import 'package:taller_perez_test/Pages/AccionesListas/Views/Listas_page.dart';
import 'package:taller_perez_test/Pages/Home/Views/Home_page.dart';

class BottomNavigationPageController extends GetxController {
  static BottomNavigationPageController get to => Get.find();

  final currentIndex = 0.obs;
  List<Widget> pages = [];

  Widget get currentPage => pages[currentIndex.value];

  void readPages() {
    pages = [Home(), Listas()];
  }

  void changePage(int _index) {
    currentIndex.value = _index;
  }

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    readPages();
  }

}