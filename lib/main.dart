import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Fluttertoast.showToast(
                msg: "I Love Flutter",
                toastLength: Toast.LENGTH_LONG,
            backgroundColor: Colors.purple,
            textColor: Colors.white,
            gravity: ToastGravity.BOTTOM);
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
