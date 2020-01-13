import 'package:flutter/material.dart';
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
class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String imageIcon ;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Saloon',
      style: optionStyle,
    ),
    Text(
      'Index 2: Trends',
      style: optionStyle,
    ),
    Text(
      'Index 3: Offers',
      style: optionStyle,
    ),
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
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
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
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_booking_unseletc.png'),
                    color: Colors.black,
              ),
            title: Text('Saloon'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_trend_unselect.png'),
                    color: Colors.black,
              ),
            title: Text('Trends'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/img_offers_unselect.png'),
                    color: Colors.black,
              ),
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