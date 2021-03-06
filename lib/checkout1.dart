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
      body: Center(
        child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 70.0),
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
                      child: Text(" Marshmallow Maggie      \$11.24    Quantity: 1 \n                                 Size: 6 in")),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
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
                      child: Text(" Howling Wolf      \$12.79    Quantity: 2 \n                          Size: 8 in")),
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                  ),                     
                  const Align(
                    alignment: Alignment.center,
                    child: Text("Subtotal: \$36.82"),
                    ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("Tax: \$4.56"),
                    ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("Shipping: \$6.00"),
                    ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text("Total: \$47.38", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),                                                            
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
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

        ],)

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Name',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.home),
                hintText: 'Enter a phone number',
                labelText: 'Address Line 1',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.home),
                labelText: 'Address Line 2',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.home),
                hintText: 'Enter a valid State',
                labelText: 'State',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.home),
                hintText: 'Enter a valid city',
                labelText: 'City',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.home),
                hintText: 'Enter a valid Zipcode',
                labelText: 'Zipcode',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter your phone number',
                labelText: 'Phone Number',
              ),
            ),
            new Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new RaisedButton(
                  child: const Text('Next'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(builder: (_) => MyApp()),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
