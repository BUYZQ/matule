import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  int _currentIndex = 0;

  final List<Widget> _rootScreens = [
    Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('first screen'),),
    ),
    Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text('second screen'),),
    ),
    Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text('three screen'),),
    ),
    Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text('four screen'),),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          _rootScreens[_currentIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'images/bottom_nav_bar/bottom_nav_panel.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  icon: Image.asset(
                    'images/bottom_nav_bar/home.png',
                    color: _currentIndex == 0 ? Color(0xff48B2E7) : Color(0xff707B81),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  icon: Image.asset(
                    'images/bottom_nav_bar/favorite.png',
                    color: _currentIndex == 1 ? Color(0xff48B2E7) : Color(0xff707B81),
                  ),
                ),
                SizedBox(width: 100),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  icon: Image.asset(
                    'images/bottom_nav_bar/notification.png',
                    color: _currentIndex == 2 ? Color(0xff48B2E7) : Color(0xff707B81),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  icon: Image.asset(
                    'images/bottom_nav_bar/profile.png',
                    color: _currentIndex == 3 ? Color(0xff48B2E7) : Color(0xff707B81),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
