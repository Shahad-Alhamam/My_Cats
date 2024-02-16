import 'package:flutter/material.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/widgets/cat_card.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Cats' , style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white, 
              fontFamily: 'ProtestRiot')
              ), ),
        backgroundColor: Colors.pink,
        actions: [ IconButton(onPressed: () {}, icon: Icon(Icons.favorite,
        color:Colors.white))
        ],
      ),
      body: GridView.builder(
      gridDelegate: 
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemCount: cats.length,
      itemBuilder: (context, index) {
        final cat = cats[index];
        return CatCard(cat: cat);
        
       },
      )
    );
  }
}

