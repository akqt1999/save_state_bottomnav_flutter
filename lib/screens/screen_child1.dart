import 'package:flutter/cupertino.dart';

class ScreenChild1 extends StatefulWidget {
  const ScreenChild1({Key? key}) : super(key: key);

  @override
  _ScreenChild1State createState() => _ScreenChild1State();
}

class _ScreenChild1State extends State<ScreenChild1> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("cai con ket ne"),);
  }
}
