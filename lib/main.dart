import 'package:flutter/material.dart';
import 'secondscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning',
      theme: ThemeData(
        primarySwatch: Colors.indigo,

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen",

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            onChanged: (text){
              value = text;
            },
          ),
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => secondscreen(value: value),
              ));
            },
            child: Text(
              "Switch"
            ),
          ),
        ],
      )

    );
  }
}
