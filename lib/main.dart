import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new SizedBox(
            height: 100,
            child: ClipPath(
              child: new Image.network("https://i.imgur.com/rfIxDIX.jpg"),
              clipper: new MyClipper(),
            ),
          ),
          new SizedBox(
            child: ClipPath(
              child: new Image.network("https://i.imgur.com/rfIxDIX.jpg"),
              clipper: new My1Clipper(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
    
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class My1Clipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = new Path();
    
    path.lineTo(size.width, size.height);
    path.lineTo(size.width,0.0 );
    path.close();
    return path;
    
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}