import 'package:flutter/material.dart';
import 'package:hero_project/main.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: 'redcontainer',
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => FirstScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
