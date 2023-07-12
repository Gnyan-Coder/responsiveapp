import 'package:flutter/material.dart';
import 'package:responsiveapp/sized_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale UI to fit multiple display sizes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: TextScalePage(),
    );
  }
}

class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: SizeConfig.safeBlockVertical!*30,
                  width: SizeConfig.safeBlockHorizontal!*30,
                  color: Colors.amberAccent,
                  child: Center(
                    child: Text(
                      'Scaling text!',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal! * 5,
                      ),
                    ),
                  ),
                ),
                 Container(
                    height: SizeConfig.safeBlockVertical!*30,
                    width: SizeConfig.safeBlockHorizontal!*30,
                    color: Colors.red,
                   child: Center(
                     child: Text(
                      'Scaling text!',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal! * 5,
                      ),
                                   ),
                   ),
                 ),
                 Container(
                    height: SizeConfig.safeBlockVertical!*30,
                    width: SizeConfig.safeBlockHorizontal!*30,
                    color: Colors.yellow,
                   child: Center(
                     child: Text(
                      'Scaling text!',
                      style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal! * 5,
                      ),
                                   ),
                   ),
                 ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}