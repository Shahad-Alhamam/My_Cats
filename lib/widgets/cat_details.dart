import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';

///this widget should recevie a cat and show all cat datails

class CateDetailswidget extends StatefulWidget {
  final Cat cat;
  const CateDetailswidget({
    super.key,
    required this.cat
  });

  @override
  State<CateDetailswidget> createState() => _CateDetailswidgetState();
}

class _CateDetailswidgetState extends State<CateDetailswidget> {

  bool isNameColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //cat image
        Image.network(widget.cat.imageLink),
        //cat name 
        Text('${widget.cat.name}', 
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, 
        color: isNameColored ? Colors.pink : Colors.black),
        ),
        //cat info 
        Text('Origin:  ${widget.cat.origin}'),
        Text('max Weight: ${widget.cat.maxWeight}'),
        Text('min Weight: ${widget.cat.minWeight}'),
        Text('Length:  ${widget.cat.length}'),
        ElevatedButton(
          onPressed: (){

          setState(() {
            isNameColored= !isNameColored;
            
          });
        }, child: Text('change Name Color')),
    
      ],
    );
  }
}