import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({ Key? key }) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
  void getGeoLocation() async { 
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getGeoLocation();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: TextButton(child: Text("location"), onPressed: () {getGeoLocation();},)),
    );
  }
}
