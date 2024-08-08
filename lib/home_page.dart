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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resonsive UI'),
      ),
      body: Column(
        children: [
          brightness == Brightness.dark ?
          Text('Hello World!', style: TextStyle(fontSize: textSize.scale(40)),)
              : Text('light')
        ],
      ),
    );
  }
}

