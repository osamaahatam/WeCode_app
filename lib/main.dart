import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello Kurdistan',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.cyan,
          ),
          ),
      ),
    );
  }
}