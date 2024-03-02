import 'package:flutter/material.dart';

class GridviewWidget extends StatefulWidget {
  const GridviewWidget({super.key});

  @override
  State<GridviewWidget> createState() => _GridviewWidgetState();
}

class _GridviewWidgetState extends State<GridviewWidget> {
  List<String> image = [
    'images/facebook (3) 1.png',
    'images/21369390.jpg',
    'images/png-transparent-whatsapp-logo-computer-icons-whatsapp-whatsapp-text-android-symbol-thumbnail.png',
    'images/facebook (3) 1.png',
    'images/facebook (3) 1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
          itemCount: image.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            // maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            mainAxisExtent: 95,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Image(image: AssetImage(image[index])),
            );
          }),
      // body: GridView.extent(
      //   // primary: false,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   maxCrossAxisExtent: 150,

      //   children: <Widget>[
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[100],
      //       child: const Text("He'd have you all unravel at the"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[200],
      //       child: const Text('Heed not the rabble'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[300],
      //       child: const Text('Sound of screams but the'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[400],
      //       child: const Text('Who scream'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[500],
      //       child: const Text('Revolution is coming...'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[600],
      //       child: const Text('Revolution, they...'),
      //     ),
      //   ],
      // ),
    );
  }
}
