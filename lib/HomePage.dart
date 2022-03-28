import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.20),
                  child: Image.asset('assets/images/test.png'),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                RichText(
                    text: const TextSpan(children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                  TextSpan(
                    text: 'What\'s Hot',
                    style: TextStyle(color: Colors.black),
                  ),
                  WidgetSpan(
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                ]))
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
