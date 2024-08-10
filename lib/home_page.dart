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
      body: LayoutBuilder(
        builder: (ctx, constrains){
          if(constrains.maxWidth> 1000){
            return Row(
              children: [
                Container(
                  width: size.width * 0.3,
                  height: size.height - kBottomNavigationBarHeight,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('Accoount'),
                        leading: Icon(Icons.person),
                      ),
                      ListTile(
                        title: Text('Dashboard'),
                        leading: Icon(Icons.dashboard),
                      ),
                      ListTile(
                        title: Text('Settings'),
                        leading: Icon(Icons.settings),
                      ),
                    ],
                  ),
                ),
                Expanded(child: ListView(
                  children: [
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.green,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.red,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.green,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.red,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.green,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.red,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.green,
                    ),
                    Container(
                      height: deviceHeight * 0.2,
                      color: Colors.red,
                    ),
                  ],
                )
                )
              ],
            );
          }
          else{
            return ListView(
              children: [
                Container(
                  height: deviceHeight * 0.2,
                  color: Colors.black,
                ),
                Container(
                  height: deviceHeight * 0.2,
                  color: Colors.white,
                ),
                Container(
                  height: deviceHeight * 0.2,
                  color: Colors.green,
                ),
                Container(
                  height: deviceHeight * 0.2,
                  color: Colors.black,
                ),
                Container(
                  height: deviceHeight * 0.2,
                  color: Colors.white,
                ),
                Container(
                  height: deviceHeight * 0.2,
                  color: Colors.green,
                ),
              ],
            );
          }
        },
      )
    );
  }
}

