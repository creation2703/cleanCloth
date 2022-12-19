import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:mixtur3/LoginPage.dart';
// import 'package:mixtur3/MarketPlace.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:mixtur3/LoginPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    title: 'MIXTUR3',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
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
                  color: Colors.white,
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
                            )..setEntry(3, 0, -0.001),
                            alignment: FractionalOffset.center,
                            child: Container(
                              height: 210,
                              width: 187,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage('images/kendrik.jpeg'),
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
                            )..setEntry(3, 0, 0.001),
                            alignment: FractionalOffset.center,
                            child: Container(
                              height: 210,
                              width: 187,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage('images/weeknd.jpeg'),
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
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('images/Logo.png'),
                            fit: BoxFit.cover,
                          ),
                        ), 
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                              text: 'Mint Music \n',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          TextSpan(
                            text: 'NFTs \n',
                            style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                // color: const Color(0xFFd5e154),
                                color: Colors.orange),
                          ),
                          const TextSpan(
                              text: 'in a wink!',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 5,),
                    // Text(
                    //   'From your mobile',
                    //   style: GoogleFonts.poppins(
                    //     fontSize: 15,
                    //     fontWeight: FontWeight.w500,
                    //     color: Colors.black,
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    const SizedBox(
                      height: 40,
                      width: 250,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // await Provider.of<Web3LinkingProvider>(context, listen: false)
                        //     .connectMetaMask();
                        // await Provider.of<Web3LinkingProvider>(context, listen: false).getCredentials();
                      },
                      // onPressed: () {
                      //   const LoginPage();
                      // },
                      child: Container(
                        height: 75,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Connect Wallet',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Icon(
                                FontAwesomeIcons.arrowRight,
                                size: 20,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
