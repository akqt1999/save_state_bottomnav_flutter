import 'package:flutter/cupertino.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(child: ListView.builder(itemBuilder: (context, index) {
      return SizedBox(height: 40,child: Text("heeelo$index"),);
    },itemCount: 100,),);
  }
}
