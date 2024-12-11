import 'package:flutter/material.dart';

class MyConstainedBox extends StatelessWidget {
  const MyConstainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('C O N S T R A I N E D   B O X')),
        backgroundColor: Colors.teal[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.green.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 200,
              minWidth: 200,
              maxHeight: 350,
              maxWidth: 350,
            ),
            child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 15,
                          offset: const Offset(5, 5))
                    ]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.widgets,
                      size: 50,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Chima_IsDartGuy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Learn coding, Flutter tips, nad clean UI design to create amazing apps',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center)
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
