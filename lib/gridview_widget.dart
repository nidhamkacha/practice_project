import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
          itemCount: 10,
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
              child: Image(image: AssetImage('images/facebook (3) 1.png')),
            );
          }),
    );
  }
}
