import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
      child: Container(
        color: Colors.yellow,
        child: const Center(
            child: Text(
          "Hello World",
          style: TextStyle(fontSize: 40, color: Colors.white),
        )),
      ),
    ));
  }
}
