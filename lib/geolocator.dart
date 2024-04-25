import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class geolocatorScreen extends StatefulWidget {
  const geolocatorScreen({super.key});

  @override
  State<geolocatorScreen> createState() => _geolocatorScreenState();
}

class _geolocatorScreenState extends State<geolocatorScreen> {
  void getCurrentPosition() async {
    // Permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("Permission denied ");
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      print("Longitude" + currentPosition.longitude.toString());
      print("Latitude" + currentPosition.latitude.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
            onPressed: () {
              getCurrentPosition();
            },
            child: Text("Get the current position")),
      )),
    );
  }
}
