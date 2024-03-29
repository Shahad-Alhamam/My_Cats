import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/widgets/cat_details.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(cat.name),
        backgroundColor: Colors.pink,
      ),
      body: CateDetailswidget(
        cat: cat,
        ),
    );
  }
  }
