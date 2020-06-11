import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget{
  String value;
  secondscreen({this.value});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 2"
        ),
      ),
      body: Center(
        child: Text(
          value,
        ),
      ),
    );
  }
}