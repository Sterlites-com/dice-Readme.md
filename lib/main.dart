import 'package:flutter/material.dart';

import 'package:dice/gradient_layout.dart';




void main() {
  runApp(MaterialApp(
      home: Scaffold(
      appBar: AppBar(
  title:  Text(
          "Check your Luck by clicking Dice, if you get 6 in the 1st try then you are Lucky!",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),
          maxLines: 2,
        
        ),
    
  backgroundColor: Color.fromARGB(255, 199, 12, 12),
),
 
        
    body: GradientLayout(),

    //     body: Container(
    //       decoration: const BoxDecoration(
    //         gradient: LinearGradient(
    //           colors:[Color.fromARGB(255, 199, 12, 12),
    //                   Color.fromARGB(255, 236, 9, 58),
    //                   Color.fromARGB(255, 218, 179, 6)],
    //           begin: Alignment.topRight,
    //           end: Alignment.bottomRight
    //           )
    //           ),

    // child: Center(
    //   child: Text("Hello World" ,style: TextStyle(color: Colors.white, fontSize: 30 ),)
    //                     ),
    //     ),                                  container
  )));
}




// class GradientLayout extends StatelessWidget {
//   const GradientLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     //throw UnimplementedError();

//     return Container(
//       decoration: const BoxDecoration(
//           gradient: LinearGradient(colors: [
//         Color.fromARGB(255, 199, 12, 12),
//         Color.fromARGB(255, 236, 9, 58),
//         Color.fromARGB(255, 218, 179, 6)
//       ], begin: Alignment.topRight, end: Alignment.bottomRight)),
     
//       child: const Center(
//           child: Text(
//         "Hello World",
//         style: TextStyle(color: Colors.white, fontSize: 30),
//       )
//       ),
//     );
//   }
// }

//flutter build apk --split-per-abi
