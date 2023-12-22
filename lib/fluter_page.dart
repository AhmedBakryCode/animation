import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Page"),),
      body: Container(
        child: Center(
          child: Hero(child: FlutterLogo(size: 150,),tag: 'to_flutter2',),
        ),
      ),
    );
  }
}
