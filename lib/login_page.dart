import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mixtur3/main.dart';

// make a firebase database



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      child: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Text(
                'Welcome',
                style: GoogleFonts.poppins(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  // letterSpacing: 3.0,
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Transform(
                            transform: Matrix4(
                              1,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                              0,
                              0,
                              0,
                              1,
                            ),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                image:const DecorationImage(
                                  image: AssetImage('images/l3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Transform(
                            transform: Matrix4(
                              1,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                              0,
                              0,
                              0,
                              1,
                              0,
                              0,
                              0,
                              0,
                              1,
                            ),
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                image: const DecorationImage(
                                  image: AssetImage('images/loginIm.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage('images/l2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text('Sign Up',
                  style: GoogleFonts.poppins(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              const SizedBox(height: 20),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm Password',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Address',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // make a button for login
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

            ]),
      ),
    ));
  }
}
