import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).orientation;
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resonsive UI'),
      ),
      body: deviceSize == Orientation.portrait ? Column(
        children: [
          Container(
            color: Colors.red,
            height: deviceHeight * 0.3,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ) : Row(
        children: [
          Container(
            color: Colors.red,
            width: deviceWidth * 0.3,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      )
    );
  }
}

