import 'package:flutter/material.dart';
import 'semester.dart';
import 'dart:developer';

void main() => runApp(new MaterialApp(

  home: new HomePage(),

));

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => new HomePageState();

}

class HomePageState extends State<HomePage>{

  List data;

  @override
  Widget build(BuildContext context){

    return new Scaffold(
        appBar: new AppBar(

          elevation: 0.0,
          backgroundColor: Colors.red,
          title: Text('M Sulayman Khan'),
          leading: Image.asset('images/suleman.jpg', fit: BoxFit.cover),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {})
          ],
        ),

      body: new Container(

        child: Products(),

      ),


    );

  }
}

//
// void main() {
//   runApp(new MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Homepage(),
//   ));
// }
//
// class Homepage extends StatefulWidget {
//   @override
//   _HomepageState createState() => _HomepageState();
//
//     final string title;
//
//
// }
//
// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: new AppBar(
//
//           elevation: 0.0,
//           backgroundColor: Colors.red,
//           title: Text('Usama Inam Paracha'),
//           leading: Image.asset('images/sam.jpg', fit: BoxFit.cover),
//           actions: <Widget>[
//             new IconButton(
//                 icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
//             new IconButton(
//                 icon: Icon(Icons.shopping_cart, color: Colors.white),
//                 onPressed: () {})
//           ],
//         ),
//
//
//     );
//   }
// }
//
