import 'package:flutter/material.dart';

class SemesterDetails extends StatefulWidget {
  final sem_detail_id;
  final sem_detail_name;
  final sem_detail_gpa;
  final sem_detail_course;

  SemesterDetails({
    this.sem_detail_id,
    this.sem_detail_name,
    this.sem_detail_gpa,
    this.sem_detail_course,
  });

  @override
  _SemesterDetailsState createState() => _SemesterDetailsState();
}

class _SemesterDetailsState extends State<SemesterDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Usama Inam Paracha'),
        leading: Image.asset('images/sam.jpg', fit: BoxFit.cover),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {})
        ],
      ),

      // Body of Product Details Page
      body: new ListView(children: [
        new Text(
          widget.sem_detail_name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
        ),
        new Container(
          height: 100,
          child: new ListTile(
            title: new Row(
              children: [
                Expanded(
                    child: new Text(
                        "${widget.sem_detail_course[0]["subjects"]}",
                        style: TextStyle(color: Colors.grey))),
                Expanded(
                    child: new Text("${widget.sem_detail_course[0]["gpa"]}",
                        style: TextStyle(color: Colors.red)))
              ],
            ),
          ),
        ),


        new Container(
          height: 100,
          child: new ListTile(
            title: new Row(
              children: [
                Expanded(
                    child: new Text(
                        "${widget.sem_detail_course[1]["subjects"]}",
                        style: TextStyle(color: Colors.grey))),
                Expanded(
                    child: new Text("${widget.sem_detail_course[1]["gpa"]}",
                        style: TextStyle(color: Colors.red)))
              ],
            ),
          ),
        ),


        new Container(
          height: 100,
          child: new ListTile(
            title: new Row(
              children: [
                Expanded(
                    child: new Text(
                        "${widget.sem_detail_course[2]["subjects"]}",
                        style: TextStyle(color: Colors.grey))),
                Expanded(
                    child: new Text("${widget.sem_detail_course[2]["gpa"]}",
                        style: TextStyle(color: Colors.red)))
              ],
            ),
          ),
        ),


        new Container(
          height: 100,
          child: new ListTile(
            title: new Row(
              children: [
                Expanded(
                    child: new Text(
                        "${widget.sem_detail_course[3]["subjects"]}",
                        style: TextStyle(color: Colors.grey))),
                Expanded(
                    child: new Text("${widget.sem_detail_course[3]["gpa"]}",
                        style: TextStyle(color: Colors.red)))
              ],
            ),
          ),
        ),

        new Container(
          height: 100,
          child: new ListTile(
            title: new Row(
              children: [
                Expanded(
                    child: new Text(
                        "${widget.sem_detail_course[4]["subjects"]}",
                        style: TextStyle(color: Colors.grey))),
                Expanded(
                    child: new Text("${widget.sem_detail_course[4]["gpa"]}",
                        style: TextStyle(color: Colors.red)))
              ],
            ),
          ),
        ),

      ]),
    );
  }
}
