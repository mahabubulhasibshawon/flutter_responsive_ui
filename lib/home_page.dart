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
          Container(height: deviceHeight* 0.7,color: Colors.black,)
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('light', style: TextStyle(fontSize: textSize.scale(24)),),
              )
        ],
      ),
    );
  }
}

