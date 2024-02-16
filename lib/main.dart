import 'package:flutter/material.dart';
import 'package:my_cats/data/all_cats.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/screens/cats_home_screen.dart';


final cats= allCats.map<Cat>((jsonCat)=>Cat.fromJson(jsonCat)).toList();


void main() {
  /**How to pasre cats from json to cat objects
  final listOfCatsAsJson = allCats;
  final listOfCatsAsjson = <Cat>[];
  for( var i =0 ; i < listOfCatsAsjson.length; i++)
  {
    final catasjson = listOfCatsAsJson[i];
    final catasobject = Cat.fromJson(catasjson);
    listOfCatsAsjson.add(catasobject);
  }**/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  CatsHomeScreen()
    );
  }
}

