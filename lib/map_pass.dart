import 'package:flutter/material.dart';

class MapViewScreen extends StatefulWidget {
  const MapViewScreen({super.key});

  @override
  State<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {
  var data = [
    {
      'name': 'raj',
      'number': '8794586785',
      'age': '21',
    },
    {
      'name': 'rahul',
      'number': '7681349856',
      'age': '19',
    },
    {
      'name': 'kishan',
      'number': '9687458672',
      'age': '25',
    },
    {
      'name': 'daruv',
      'number': '8794541785',
      'age': '24',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
        ),
        body: ListView(
          children: data
              .map(
                (e) => ListTile(
                  title: Text(e['name'].toString()),
                  subtitle: Text(e['number'].toString()),
                  trailing: Text(e['age'].toString()),
                ),
              )
              .toList(),
        ));
  }
}
