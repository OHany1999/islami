import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName='home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Islami',style: TextStyle(fontSize: 40.0),),
      ),
    );
  }
}
