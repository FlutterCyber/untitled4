import 'package:flutter/material.dart';
import 'package:untitled4/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

        actions: const [
          Icon(
            Icons.search,
            color: Colors.red,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 15,
          ),
        ],
        // soyani yo'qotish/darajasi
        elevation: 0,

      ),
      body: Center(
        child: Container(
          height: 50,
          width: 150,
          color: Colors.blue,
          child: FlatButton(
            child: const Text('Next page'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, SecondPage.id);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: const Icon(Icons.add),
        onPressed: (){
          //
        },
      ),

    );
  }
}
