import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/screens/cat_details_screen.dart';

//this widget shows a card that showa the image and the name of cat
class CatCard extends StatelessWidget {
 final Cat cat;
  
  const CatCard({ super.key, required this.cat });


  @override
  Widget build(BuildContext context) {
    return GestureDetector (
         onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CatDetailsScreen(cat: cat);
          }));
         } ,
        child: Card( 
          child: Column (
      children: [
        //cat image 
        Expanded(
          child:Image.network(
            width: double.infinity,
            fit : BoxFit.cover,
            cat.imageLink),
            ),
      
        //cat name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(cat.name, textAlign: TextAlign.center, style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.pink,), 
          ),
        )
       ],
      )),
    );
  }
}