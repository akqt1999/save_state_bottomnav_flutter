import 'package:boottomvavi_test_v2/controllers/dashboard_screen.dart';
import 'package:boottomvavi_test_v2/screens/sceen3.dart';
import 'package:boottomvavi_test_v2/screens/screen1.dart';
import 'package:boottomvavi_test_v2/screens/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  DashboardController _dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text("${_dashboardController.getTitle()}"),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.title))],
        ),
        body: SafeArea(
            child: Obx(
          () =>
              IndexedStack(index: _dashboardController.currentIndex.value, children: [Screen1(), Screen2(), Screen3()]),
        )),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black26,
            backgroundColor: Colors.blue,
            onTap: (int index) {
              _dashboardController.currentIndex.value = index;
              print("heelo:  $index");
            },
            currentIndex: _dashboardController.currentIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'screen1',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.star), label: 'screen2'),
              BottomNavigationBarItem(icon: Icon(Icons.extension), label: 'screen3')
            ],
          ),
        ));
  }
}
