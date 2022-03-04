import 'package:boottomvavi_test_v2/screens/screen_child1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(child: IconButton(icon: Icon(Icons.map), onPressed: () {Get.to(ScreenChild1());  },),);
  }
}
