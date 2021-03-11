import 'package:flutter/material.dart';

import 'homePage.dart';
import 'incomePage.dart';
import 'miningPage.dart';
import 'myPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{


  int currentIndex = 0;
  final pages = [HomePage(),MiningPage(),IncomePage(),MyPage()];
  @override
  void initState() {
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title : Text("奇点矿池")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(label: "首页",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "矿池",icon: Icon(Icons.ballot)),
          BottomNavigationBarItem(label: "收益",icon: Icon(Icons.remove_circle)),
          BottomNavigationBarItem(label: "我的",icon: Icon(Icons.person))
        ],

        selectedItemColor: Color(0xff2196F3),
        unselectedItemColor: Color(0xff8A8A8A),
        //BottomNavigationBarType改为fixed模式
        type: BottomNavigationBarType.fixed,
      ),
      body: pages[currentIndex],
    );
  }

}