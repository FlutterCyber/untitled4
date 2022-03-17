import 'package:flutter/material.dart';
import 'package:untitled4/pages/home_page.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 150,
          color: Colors.green,
          child: FlatButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            child: Text('Second page'),
          ),
        ),
      ),
    );
  }
}
