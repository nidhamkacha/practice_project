import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      // body: Column(
      //   children: [
      //     Stack(
      //       alignment: Alignment.center,
      //       children: [
      //         Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           height: 180,
      //           width: 180,
      //           color: Colors.blueAccent,
      //         ),
      //         Container(
      //           height: 160,
      //           width: 160,
      //           color: Colors.yellow,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.amber,
          ),
          Divider(
            color: Colors.black,
            height: 15,
            endIndent: 50,
            indent: 50,
            thickness: 10,
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
          ),
          Spacer(
           
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.pink,
          ),
        ],
      ),
      // body: Stack(
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             Image.asset(
      //               'images/Ellipse 29.png',
      //               scale: 3,
      //             )
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             Image.asset(
      //               'images/Ellipse 28.png',
      //               scale: 3,
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         Text("data"),
      //       ],
      //     )
      //     // Container(
      //     //   width: double.infinity,
      //     // ),
      //   ],
      // ),
    );
  }
}
