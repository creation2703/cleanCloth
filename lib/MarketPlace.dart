// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  void playSound(int sound) {
    final player = AudioPlayer();
    player.setAsset('sounds/note$sound.wav');
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          backgroundColor: Colors.green,
          title: const Text(
            'NFT MarketPlace',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Josefin Sans',
              letterSpacing: 4.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(90.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/after.jpeg'),
                ),
              ),
              Slider(min: 0, max: 20, value: 20, onChanged: ((value) async {})),
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: const Icon(
                  Icons.play_circle_fill,
                  size: 70.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Buy for 1.0 ETH',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
