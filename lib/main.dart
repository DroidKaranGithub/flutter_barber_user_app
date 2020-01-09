import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_splashscreen/homescreen.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SplashScreenPage(),
          );
        }
      }
      
      class SplashScreenPage  extends StatefulWidget {
        @override
        _SplashScreenPage createState() => new _SplashScreenPage();
              }
      
      class _SplashScreenPage extends State<SplashScreenPage> {

        @override
        void initState() {
        super.initState();
        // loadHomePage();
        Future.delayed(Duration(seconds: 2),(){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomeScreen()));});
  }

    // Future<Future> loadHomePage()async{
    //     return new Future.delayed(Duration(seconds: 3), onDoneLoading());
      
    //   }

    // onDoneLoading()async{

    //     NavigatorState().pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    //     // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    //                   }
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover
              )
            ) , 
            child: Center(
              child: Container(
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  )
                ),
                
              ),
            ),
            ),
            
          );
        }
      } 
      
        