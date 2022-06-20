import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/material.dart';

const apikey =
    "a6f9f9423415dbf890c06ff4d48ee1d2f8eb225b781a717fbc1b69a5c0c9920e9f45db71890e8c16";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CameraDeepArController cameraDeepArController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          CameraDeepAr(
              onCameraReady: (isReady) {
                setState(() {});
              },
              onImageCaptured: (path) {
                setState(() {});
              },
              onVideoRecorded: (path) {
                setState(() {});
              },
              androidLicenceKey: apikey,
              iosLicenceKey: apikey,
              cameraDeepArCallback: (c) async {
                cameraDeepArController = c;
                setState(() {});
              }),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.navigate_next),
                      onPressed: () => {
                            cameraDeepArController.changeMask(1)
                          }))),


            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.share),
                      onPressed: () => {
                            cameraDeepArController.snapPhoto(),
                          }))),//Share

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.switch_camera),
                      onPressed: () => {
                            cameraDeepArController.switchCamera(),
                          }))) 
            

        ],
      )),
    );
  }
}