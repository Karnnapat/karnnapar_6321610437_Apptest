import 'package:flutter/material.dart';

class Page5Screen extends StatefulWidget {
  const Page5Screen({Key? key}) : super(key: key);

  @override
  State<Page5Screen> createState() => _Page5ScreenState();
}

class _Page5ScreenState extends State<Page5Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Navigate Page'),
      ),
      body: Column(
        children: [
          Image.asset('assets/Me1.jpg'),
          const ListTile(
            title: Text('My name is Karnnapat Kamolwisutthipong',
            style: TextStyle(
              color: Colors.black,
              fontSize :14,
            ),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blueAccent,
            ),
          ),
          const ListTile(
            title: Text('6321610437 ชั้นปีที่3',
            style: TextStyle(
              color: Colors.black,
              fontSize :14,
            ),
            ),
            leading: Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 235, 14, 22),
            ),
          ),
          const ListTile(
            title: Text('My Phone number is 0627019229',
            style: TextStyle(
              color: Colors.black,
              fontSize :14,
            ),
            ),
            leading: Icon(
              Icons.phone,
              color: Colors.blueAccent,
            ),
          ),

        ],
      ),
    );
  }
}

