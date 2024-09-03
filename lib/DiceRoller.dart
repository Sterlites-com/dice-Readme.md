import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'dart:math'; //for random no.

// import 'package:flutter/services.dart';

// // Import package
// import 'package:flutter_vibrate/flutter_vibrate.dart';

// import 'package:vibration/vibration.dart'; //haptic

import 'package:vibration/vibration.dart';

var randomNumber = Random().nextInt(6) + 1; 
var imageasset = 'assets/$randomNumber.png'; //for 
var counter = 1;

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    // throw UnimplementedError();

    return _DiceRoller(); //
  }
}

AudioPlayer player = AudioPlayer(); //sound

class _DiceRoller extends State<DiceRoller> {
  // int counter = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Transform.rotate(
      angle: Random().nextDouble() * 360,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.asset(imageasset,
                  width: 200), // Image.asset('assets/randomNumber.png')
              onTap: () async {
                Timer.periodic(Duration(milliseconds: 100), (Timer) {
                  setState(() {
                    counter++;

                    var randomNumber = Random().nextInt(6) + 1;

                    imageasset = 'assets/$randomNumber.png';

                    Vibration.vibrate(duration: 100);

                    //sound

                   player.setAsset('assets/videoplayback.m4a');
                   player.play();
                  });

                  if (counter >= 10) {
                    Timer.cancel();
                    setState(() {
                      counter = 1;
                    });
                  }
                  ;
                });
              },
            )
          ]

          // [
          //   Image.asset(imageasset, width: 200),

          //   TextButton(
          //       onPressed: () {
          //         // Vibration.vibrate();

          //         // HapticFeedback.vibrate();
          //         // imageasset = 'assets/1.png';
          //         // Timer.periodic(Duration(milliseconds: 80), (timer) {
          //         //     counter++;
          //         //   });

          //         setState(() {

          //           var randomNumber = Random().nextInt(6) + 1;

          //           imageasset = 'assets/$randomNumber.png';

          //           Vibration.vibrate(duration: 100);
          //         });
          //       },
          //       style: TextButton.styleFrom(
          //           foregroundColor: Colors.white,
          //           textStyle: TextStyle(fontSize: 30)),
          //       child: Text("Roll Dice")
          //       // child: Image.asset('assets/randomNumber.png'),
          // )],
          ),
    );
  }
}
