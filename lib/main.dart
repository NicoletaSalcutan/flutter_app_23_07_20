import 'package:flutter/material.dart';
import 'package:flutter_app_23_07_20/footer.dart';
import 'package:flutter_app_23_07_20/landingPage.dart';
import 'package:flutter_app_23_07_20/navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: Stack(
       children: [
         Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.centerLeft,
               end: Alignment.centerRight,
               colors: [Color.fromRGBO(195, 20, 50, 1.0),Color.fromRGBO(36, 11, 54, 1.0)]
             ),
           ),
           child: Column(
             children: [NavBar(), Padding(
               padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
               child: LandingPage(),
             )],
           ),
         ),
         FooterWidget()
       ],
     ),

    );
  }
}
