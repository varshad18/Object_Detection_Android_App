// TODO Implement this library.

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detection/static%20image/Homescreen.dart';
import 'package:object_detection/static%20image/static.dart';

import '../main.dart';

class aboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          //primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff47dbd9),
            title: Text("Object Detection App"),

          ),
          body:Container(
            padding: EdgeInsets.only(left: 40,right:40),
            child:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                      "Object Detection \n App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "assets\fonts\KiwiMaru-Regular.ttf",
                      color: Color(0xFFFFC0D5),
                      fontWeight: FontWeight.bold,
                      fontSize: 44
              )
                  ),
                  Image.asset('images/Picture1.jpg'),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "-----------------------------------------------",
                          style: TextStyle(
                            color: Color(0xffe2839f),
                            fontFamily: "assets\fonts\KiwiMaru-Light.ttf",
                            fontSize: 25,
                          ),
                        )
                      ]
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/pic1.jpg'),
                    Image.asset('assets/images/pic.jpg'),
                    Image.asset('assets/images/pic5.png'),
                ],
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                          "Capture      Detect      Predict\n -----------------------------------------------",
                        style: TextStyle(
                          color: Color(0xffe2839f),
                          fontFamily: "assets\fonts\KiwiMaru-Light.ttf",
                          fontSize: 25,
                        ),
                      )
                    ]
                  ),
                  Text(
                      "This app is used to detect and recognise daily life real time objects and existing images in your gallery.  Image recognition on Android helps users learn a lot about their surroundings.",
                      textAlign: TextAlign.justify,
                    style: TextStyle(
                      color:Color(0xffacacac),
                        fontSize: 20,
                        fontFamily: "assets\fonts\KiwiMaru-Light.ttf"
                    )),
                  Text(
                      "Created for MCAD Project",
                    style: TextStyle(
                        fontFamily: "assets\fonts\KiwiMaru-Light.ttf",
                      fontSize: 18
                    )
                  ),
                  ButtonTheme(
                    minWidth: 170,
                    child: RaisedButton(
                      child: Text("Go to Home"),
                      color: Color(0xFF47DBD9),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_screen(),
                        ),
                        );
                      },
                    ),
                  ),
                  //   <--- image
                ],
              ),
            ),
          ),
        )
    );
  }
}