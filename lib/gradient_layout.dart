import 'package:dice/DiceRoller.dart';

import 'package:flutter/material.dart';

class GradientLayout extends StatelessWidget {
  GradientLayout({super.key});

  // var imageasset = 'assets/1.png'; //

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 199, 12, 12),
        Color.fromARGB(255, 236, 9, 58),
        Color.fromARGB(255, 218, 179, 6)
      ], begin: Alignment.topRight, end: Alignment.bottomRight)),
      child: Center(
          //     child: Text(
          //   "Hello World",
          //   style: TextStyle(color: Colors.white, fontSize: 30),
          // )
          //  child: Image.asset(
          //    'assets/1.png', width: 200),

      //     child:Column(
      //   children: [
      //     Image.asset( imageasset , width: 200),
      //     TextButton(
      //         onPressed: () {
      //           imageasset = 'assets/3.png';
      //         },
      //         style: TextButton.styleFrom(
      //             foregroundColor: Colors.white,
      //             textStyle: TextStyle(fontSize: 30)),
      //         child: Text("Roll Dice"))
      //   ],
      // ) 
      
      child: DiceRoller(), //
      
      ),
    );
  }
}

class Coloum {}
