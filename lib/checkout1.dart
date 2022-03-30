import 'package:flutter/material.dart';
import 'credit_card.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Checkout(),
  ));
}

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "CHECKOUT",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(

        children: <Widget>[
                     const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
            ),
                     const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
            ),
                     const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
            ),
                     const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 40, bottom: 0),
            ),                                      
               
                  Align(
                      alignment: Alignment.center,

                        child: Image.asset(
                          "assets/images/Wolf.jpg",
                          width: 100,
                          height: 100,
                        ),
                      ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(" Howling Wolf      \$15.99    Quantity: 2")),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                  ),
                  Align(
                      alignment: Alignment.center,

                        child: Image.asset(
                          "assets/images/BichonFrise.jpg",
                          width: 100,
                          height: 100,
                        ),
                      ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(" Marshmallow Maggie      \$14.99    Quantity: 1")),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                  ),                    

            ElevatedButton(
                      child: const Text('Checkout'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                    ),
        ], 
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "CHECKOUT",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('NEXT'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (_) => MyApp()),
            );
          },
        ),
      ),
    );
  }
}
