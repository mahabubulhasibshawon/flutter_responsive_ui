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
      body: Row(
        children: [
          Flexible(
            flex: 7,
              child: Container(
                color: Colors.red,
              )
          ),
          Flexible(
            flex: 2,
              child: Container(
                color: Colors.blue,
              )
          ),
        ],
      ),
    );
  }
}

