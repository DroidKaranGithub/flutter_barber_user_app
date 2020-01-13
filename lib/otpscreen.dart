import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_view/pin_view.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home(
      
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}   
  double rsOpecity;
  Timer timer;
  int startTime = 30;


class _HomeState extends State<Home> {
  
  void startTimer(){
  const oneSec = const Duration(seconds: 1);
  timer = new Timer.periodic(oneSec, (Timer timer)=> setState((){
      if(startTime <1){
        rsOpecity = 1;
        timer.cancel();
      }else{
        rsOpecity = 0.5;
        startTime = startTime-1;
      }
  }));
} 

  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
        theme: ThemeData(
          primaryColor: Colors.orange[800],
        ),
        home: Scaffold(
          body: Container(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only( left: 20),
                  child: Text('OTP',
                style: TextStyle(
                  fontFamily: 'Montserrat-Bold',
                  fontSize: 20
                ),)
                ),
                  Container (
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: PinView (
                      count: 6, // count of the fields, excluding dashes
                      autoFocusFirstField: false,
                      // sms: SmsListener (
                      //   // this class is used to receive, format and process an sms
                      //   from: "6505551212",
                      //   formatBody: (String body){
                      //     // incoming message type
                      //     // from: "6505551212"
                      //     // body: "Your verification code is: 123-456"
                      //     // with this function, we format body to only contain
                      //     // the pin itself
                      //     String codeRaw = body.split(": ")[1];
                      //     List<String> code = codeRaw.split("-");
                      //     return code.join();
                      //   }
                      // ),
                      submit: (String pin){
                        showDialog (
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog (
                              title: Text("Pin received successfully."),
                              content: Text("Entered pin is: $pin")
                            );
                          }
                        );
                      } // gets triggered when all the fields are filled
                    ),
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 100, right: 30),
                          child: Text('00:$startTime',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 15
                          ),),
                        )
                      ],
                    ),
                  Container(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: rsOpecity,
                      child: Text('Resend',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 15,
                        color: Colors.orange[800]
                      ),),
                    ),
                  )
                ],
              )
                )
            ),
          );
  }
}