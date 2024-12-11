import 'package:flutter/material.dart';

class MyConstainedBox extends StatelessWidget {
  const MyConstainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('C O N S T R A I N E D   B O X')),
        backgroundColor: Colors.teal[200],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.teal.shade100, Colors.green.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),

      child: Center(
        child: ConstrainedBox(constraints: const BoxConstraints(
          minHeight: 200,
          minWidth: 200,
          maxHeight:350 ,
          maxWidth:350,
        ),
        child:Container(
          padding: const EdgeInsets.all(15),
        ) ,),
      ),
    ),);
  }
}