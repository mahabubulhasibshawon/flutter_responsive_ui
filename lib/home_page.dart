import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).orientation;
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    var textSize =  MediaQuery.of(context).textScaler;
    var brightness = MediaQuery.of(context).platformBrightness;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resonsive UI'),
      ),
      body: Container(
        height: size.height - kBottomNavigationBarHeight,
        width: size.width,
        child: Center(
          child: AspectRatio(aspectRatio: 16/9,child: Container(
            color: Colors.red,
          ),),
        )
      )
    );
  }
}

