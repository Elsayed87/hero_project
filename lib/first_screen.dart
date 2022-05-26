import 'package:flutter/material.dart';
import 'package:hero_project/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animation=ColorTween( end:Colors.yellow,begin: Colors.pinkAccent ).animate(_animationController);
    // animation = CurvedAnimation(
    //   parent: _animationController,
    //   curve: Curves.easeIn,
    // );

    _animationController.forward();

    // animation.addStatusListener((status) {
    //
    //   // if (status == AnimationStatus.completed) {
    //   //   _animationController.reverse(from: 1.0);
    //   // } else if (status == AnimationStatus.dismissed) {
    //   //   _animationController.forward();
    //   // }
    // });
    _animationController.addListener(() {
     // _animationController.repeat();
      setState(() {});

    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:animation.value,
      appBar: AppBar(),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => SecondScreen(),
                ),
              );
            },
            child: Hero(
              tag: 'redcontainer',
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 200 ,
                  width: 200 ,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    'c1',
                    style: TextStyle(fontSize: 70.0),
                  )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200 ,
              width: 200 ,
              color: Colors.blue,
              child: Center(
                  child: Text(
                'c2%',
                style: TextStyle(fontSize: 70.0),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
