import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffffffff),
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                        width: 1000,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                child: const Text("My Favorites!",
                                    style: TextStyle(fontSize: 25))),
                            Container(
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                      'assets/images/resizedaccount.png'),
                                )),
                          ],
                        ))),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(children: const <Widget>[]))
              ],
            ),
          ),
        ));
  }
}
