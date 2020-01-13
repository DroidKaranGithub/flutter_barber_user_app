

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_splashscreen/otpscreen.dart';


class LoginScreen extends StatelessWidget {
      @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false, // set it to false
  // body: SingleChildScrollView(child: YourBody()),
        body: SingleChildScrollView(
                  child: Container( 
            child: Column(
              children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100, right: 100, left: 100,bottom:100 ),
              child: Image(
                image: AssetImage('images/logo.png'),
              ),                             
            ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child :Text("Hello there",
              textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'Montserrat-Bold',
                  fontSize: 20
                ),
              ) 
                  ),
                ],
              ),   
                Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 5),
                    child :Text("Welcome to Barber",
              textAlign: TextAlign.end,
                style: TextStyle(
                  fontFamily: 'Montserrat-Bold',
                  fontSize: 20
                ),
              ) 
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 5, right:  20 ),
                    child :Text("Please enter your mobile number to sign in",
                style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontSize: 15
                ),
              ) 
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: TextField(
                    maxLength: 10,
                  style: TextStyle(
                  fontFamily: 'Montserrat-SemiBold',
                  fontSize: 15
                  ),
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.orange,
                decoration:  InputDecoration(
                  counterText: '',
                  hintStyle: TextStyle(
                  fontFamily: 'Montserrat-Medium',
                  fontSize: 15
                  ),
                  hintText: 'Enter mobile number'
                ),keyboardType: TextInputType.number,
              ) 
              ),

              Container(
                margin: EdgeInsets.only(top: 30),
                height: 45,
                width: 120,
                child: RaisedButton(
                padding: EdgeInsets.only(right: 20, left: 20),
                color: Colors.orange[800],
                child: Text('Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat-SemiBold',
                  fontSize: 15
                ),),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OtpScreen()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15)
                ),
              ),
              )
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
              ],
            )
          ),
        ),
      ),
    );
  }
}