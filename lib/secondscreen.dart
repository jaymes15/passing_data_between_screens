import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget{
  String value;
  secondscreen({ Key key,@required this.value}) : super(key : key);
  @override
  _secondscreenState createState() => _secondscreenState(value);

  }


class _secondscreenState extends State<secondscreen> {
  String value;

  _secondscreenState(this.value);

  @override
  Widget build(BuildContext context) {
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