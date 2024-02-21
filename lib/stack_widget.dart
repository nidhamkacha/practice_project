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
            child: RichText(
              text: TextSpan(
                text: 'Text',
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Text",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Text",
                    // style: TextStyle(
                    //   color: Colors.red,
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ),
                ],
              ),
            ),
            // child: RichText(
            //   text: TextSpan(
            //     text: 'Hello ',
            //     style: DefaultTextStyle.of(context).style,
            //     children: const <TextSpan>[
            //       TextSpan(
            //           text: 'bold',
            //           style: TextStyle(fontWeight: FontWeight.bold)),
            //       TextSpan(text: ' world!'),
            //     ],
            //   ),
            // ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              // style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.red,
              //     side: BorderSide(
              //         width: 1, color: Colors.brown), //border width and color
              //     elevation: 1, //elevation of button
              //     shape: RoundedRectangleBorder(
              //         //to set border radius to button
              //         borderRadius: BorderRadius.circular(10)),
              //     padding: EdgeInsets.all(20) //content padding inside button
              //     ),
              onPressed: () {},
              child: Text("test"),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.red,
              //     side: BorderSide(
              //         width: 1, color: Colors.brown), //border width and color
              //     elevation: 1, //elevation of button
              //     shape: RoundedRectangleBorder(
              //         //to set border radius to button
              //         borderRadius: BorderRadius.circular(10)),
              //     padding: EdgeInsets.all(20) //content padding inside button
              //     ),
              onPressed: () {},
              child: Text("test"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('data'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          Divider(
            color: Colors.black,
            height: 15,
            endIndent: 50,
            indent: 50,
            thickness: 10,
          ),
          InkWell(
            onTap: () {
              print('object');
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                print('dwd');
              });
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.pink,
            ),
          ),
          Stack(
            children: [
              ClipOval(
                  child:
                      Container(height: 50, width: 50, color: Colors.orange)),
              ClipOval(
                  child: Container(height: 50, width: 50, color: Colors.pink)),
              ClipOval(
                  child: Container(
                      height: 50, width: 50, color: Colors.greenAccent)),
            ],
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
