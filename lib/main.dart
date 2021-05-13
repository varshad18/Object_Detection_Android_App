import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detection/realtime/live_camera.dart';
import 'package:object_detection/static%20image/static.dart';
import 'package:object_detection/static%20image/Homescreen.dart';
import 'package:object_detection/static%20image/Aboutapp.dart';
List<CameraDescription> cameras;

Future<void> main() async {
  // initialize the cameras when the app starts
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  // running the app
  runApp(
    MaterialApp(
      home: Home_screen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffd7fafe),
      appBar: AppBar(
        backgroundColor: Color(0xffde7b9d),
        title: Text("Image Recognition App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => aboutApp(),
              ),
              );
            },
          ),
        ],
      ),

      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ButtonTheme(
                minWidth: 170,
                child: RaisedButton(
                  child: Text("Detect in Image"),
                  textColor:Colors.black,
                  color: Color(0xFFFFC0D5),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => StaticImage(),
                      ),
                    );
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 160,
                child: RaisedButton(
                  child: Text("Real Time Detection"),
                  textColor:Colors.black,
                  color: Color(0xFFFFC0D5),
                  onPressed:() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LiveFeed(cameras),
                      ),
                    );
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 170,
                child: RaisedButton(
                  child: Text("Back"),
                  textColor:Colors.black,
                  color: Color(0xFFFFC0D5),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Home_screen(),
                    ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  aboutDialog(){
     showAboutDialog(
      context: context,
      applicationName: "Object Detector App",
      applicationLegalese: "By Team",
      applicationVersion: "1.0",
    );
  }

}
