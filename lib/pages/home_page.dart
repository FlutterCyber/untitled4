import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar yaratish
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Telegram',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        // yozuvni o'rtadan chiqarish
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            icon: Icon(Icons.ac_unit_sharp),
          ),
          const SizedBox(
            width: 15,
          ),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SecondPage.id);
              },
              icon: Icon(Icons.notifications)),
          const SizedBox(
            width: 15,
          ),
        ],
        // soyani yo'qotish/darajasi
        elevation: 0,
      ),
      body: Center(
          child: Text(
        "Number is " + count.toString(),
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      )),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {
          // Stateful widget qilib beradi yani ui ni o'zgartirib beradi
          setState(() {
            count++;
          });
          print(count);
        },
      ),
    );
  }
}
