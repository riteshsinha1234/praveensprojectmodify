   import 'package:code/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and width of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //Here the height of the container is 45 % of our total height
            height: size.height *.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/stethoscope-icon-g4b7fa5042_1280.png"), //edit this image
              ),
            ),
          ),
          SafeArea(
              child: Column(
               children: <Widget>[
                 Container(
                   height: 52,
                   width: 52,
                   decoration: BoxDecoration(
                     color: Color(0xFFF2BEA1),

                   ),
                 )
               ],
              )
          )
        ],
      ),
    );
  }
}

