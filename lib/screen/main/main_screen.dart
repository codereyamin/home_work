import 'package:flutter/material.dart';
import 'package:home_work/constant/colors.dart';
import 'package:home_work/screen/home/home_page.dart';
import 'package:iconly/iconly.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectIndex = 0;
  List<Widget> bottomNavigatorItem = [
    HomePage(),
    Text('page 1'),
    Text('page 2'),
    Text('page 3'),
  ];
  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavigatorItem[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _onTap,
          selectedItemColor: titleColor,
          unselectedItemColor: subTitleColor,
          items: [
            BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.discovery), label: ''),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.notification), label: ''),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.category), label: ''),
          ]),
    );
  }
}
