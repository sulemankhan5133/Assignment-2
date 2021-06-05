import 'package:flutter/material.dart';
import 'semester_details.dart';
import 'dart:convert';
import 'dart:developer';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List data;

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
      builder: (context, snapshot) {
        //Decode Json
        var mydata = json.decode(snapshot.data.toString());

        return new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new Single_prod(
              sem_id: mydata[index]["id"],
              sem_name: mydata[index]["semesterNumber"],
              sem_gpa: mydata[index]["overallGPA"],
              sem_details: mydata[index]['courses'],
            );
          },
          itemCount: mydata == null ? 0 : mydata.length,
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final sem_id;
  final sem_name;
  final sem_gpa;
  final sem_details;

  Single_prod({
    this.sem_id,
    this.sem_name,
    this.sem_gpa,
    this.sem_details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: sem_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new SemesterDetails(
                        sem_detail_id: sem_id,
                        sem_detail_name: sem_name,
                        sem_detail_gpa: sem_gpa,
                        sem_detail_course: sem_details,
                      ))),
              child: ListTile(
                leading: Text(
                  sem_id,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(
                  'Semester: ' + "$sem_name",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
                ),
                subtitle: Text(
                  "$sem_gpa",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          )),
    );
  }
}
