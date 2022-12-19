// ignore_for_file: file_names
import 'package:flutter/material.dart';
// import 'package:mixtur3/main.dart';
import 'package:mixtur3/MarketPlace.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = 'LoginPage'; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("LOGIN"),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your full name',
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone),
                    hintText: 'Enter a phone number',
                    labelText: 'Phone',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Enter your Emain Id',
                    labelText: 'Email Id',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid date';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    hintText: 'Enter your date of birth',
                    labelText: 'Dob',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid date';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 100.0,
                ),
                SizedBox(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MarketPlace()));
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 50.0,
                  width: 80.0,
                  child: Divider(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Login With Google',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    TextButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'images/icons8-google-48.png',
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
