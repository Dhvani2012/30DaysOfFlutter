import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final  int days = 30;

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome To $days Days Of Flutter"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}