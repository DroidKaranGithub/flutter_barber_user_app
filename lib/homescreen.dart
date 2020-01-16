import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_splashscreen/common/sliderightroute.dart';
import 'package:flutter_app_splashscreen/tabs/hometab.dart';
import 'package:flutter_app_splashscreen/tabs/navigationtab.dart';
import 'package:flutter_app_splashscreen/tabs/offerstab.dart';
import 'package:flutter_app_splashscreen/tabs/saloonlisttab.dart';
import 'package:flutter_app_splashscreen/tabs/trendstab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> _widgetOptions = [
    HomeTab(),
    SaloonListTab(),
    TrendsTab(),
    OffersTab()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0){

      } 
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange[800]
      ),
      home: Scaffold(
      appBar: AppBar(
      leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: ImageIcon(
                  AssetImage('images/img_nav_open.png'),
                  color: Colors.black,
                ),
                onPressed: () {
                Navigator.push(context, SlideRightRoute(page: NavigationTab()));

            });}),
        title: Text("Flutter App"),
        actions: <Widget>[
          IconButton(
            icon: ImageIcon(
                  AssetImage('images/img_notification_false.png'),
                  color: Colors.black,
                ),
            onPressed: () {
            },
          ),
          // IconButton(
          //   icon: ImageIcon(
          //         AssetImage('images/img_home_unselect.png'),
          //         color: Colors.black,
          //       ),
          //   onPressed: () {
          //   },
          // )
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_home_unselect.png'),
                    color: Colors.black,
              ),
              activeIcon: ImageIcon(
              AssetImage('images/img_home_select.png')),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_booking_unseletc.png'),
                    color: Colors.black,
              ),
              activeIcon: ImageIcon(
              AssetImage('images/img_booking_select.png')),
            title: Text('Saloon'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_trend_select.png'),
                    color: Colors.black,
              ),
              activeIcon: ImageIcon(
              AssetImage('images/img_trend_select.png')),
            title: Text('Trends'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_offers_unselect.png'),
                    color: Colors.black,
              ),
              activeIcon: ImageIcon(
              AssetImage('images/img_offers_select.png')),
            title: Text('Offers'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[800],
        selectedIconTheme: IconThemeData(
          color: Colors.orange[800]
        ),
        onTap: _onItemTapped,
      ),
    ));
  }
}