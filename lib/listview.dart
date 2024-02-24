import 'package:flutter/material.dart';

class ListVieWidget extends StatefulWidget {
  const ListVieWidget({super.key});

  @override
  State<ListVieWidget> createState() => _ListVieWidgetState();
}

class _ListVieWidgetState extends State<ListVieWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView(
        
        padding: EdgeInsets.all(10),
        // physics: NeverScrollableScrollPhysics(),
        // reverse: true,
        // shrinkWrap: true,
        children: [
          Container(
            height: 50,
            color: Colors.red,
            child: Text('data'),
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: Text('data'),
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: Text('data'),
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: Text('data'),
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: Text('data'),
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: Text('data'),
          ),
          Container(
            height: 50,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
