import 'package:flutter/material.dart';
import 'calculator.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Navigate Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
                onPressed: () {
                  // go to page2
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page3Screen(),
                    ),
                  );
                },
                child: const Text('Go to Page 3'),
              ),
            ),
           
            SizedBox(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
                onPressed: () {
                  // go to page2
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Page5Screen(),
                    ),
                  );
                },
                child: const Text('Go to Page 5'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
