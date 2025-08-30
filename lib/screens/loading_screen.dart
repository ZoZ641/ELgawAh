import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var log = Logger();
  Location position = Location();
  void getLocation() async {
    await position.getCurrentPosition();
    //log.i('latitude: ${position.latitude}, longitude: ${position.longitude}');
  }

  void getData() {
    get(url)
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('test')),
    );
  }
}
