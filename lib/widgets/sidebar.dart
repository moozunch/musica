import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SideBar extends StatefulWidget {

  @override
  _SideBarState createState() => _SideBarState();

}

class _SideBarState extends State<SideBar> {
  int activeIndex = 0;
  //list untuk halaman berupa widget
  final List<Widget> pages = [
    Center(child: Text('Home', style: TextStyle(fontSize: 24),),),
    Center(child: Text('Favorites', style: TextStyle(fontSize: 24),),),

    Center(child: Text('Profile', style: TextStyle(fontSize: 24),),),
    Center(child: Text('Logout', style: TextStyle(fontSize: 24),),),
  ];

  //untuk object dan icon
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //SideBar
          Container(
            width: 80,
            color: Theme.of(context).primaryColorDark,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSideBarIcon( //kita buat di di function karena kita mau atur dia kalau ditekan kan aktif dan berubah warna atau bagaimana
                  CupertinoIcons.home, 0),
                  SizedBox(height: 20,),
                  buildSideBarIcon(CupertinoIcons.heart, 1),
                  SizedBox(height: 20,),
                  buildSideBarIcon(CupertinoIcons.person, 2),
                  SizedBox(height: 20,),
                  buildSideBarIcon(CupertinoIcons.square_arrow_right, 3),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


buildSideBarIcon(IconData icon, int index) {
  return GestureDetector(
    onTap: () {
      setState(() {
        activeIndex = index;
      });
    },
    child: Column(
      children: [
        Icon(icon, color: activeIndex == index 
        ? Theme.of(context).primaryColor
        : Theme.of(context).disabledColor)
      ],
    ),
  );
}}
