import 'package:flutter/material.dart';
import 'package:fourgreen/components/rounded_search_field.dart';
import 'placeholder_widget.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.black),
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
  ];
  Icon iconc = new Icon(Icons.chat_bubble_outline_rounded);
  Icon icont = new Icon(Icons.shopping_cart_outlined);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       actions: <Widget>[
         RoundedSearchField(),
         IconButton(icon: icont, onPressed: (){
         }),
         IconButton(icon: iconc, onPressed: (){
         })
       ],
     ),
     body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       currentIndex: _currentIndex,
       selectedItemColor: Colors.red,
       unselectedItemColor: Colors.grey,
       unselectedFontSize: 10,
       selectedFontSize: 10,
       iconSize: 20,
       showUnselectedLabels: true,
       type: BottomNavigationBarType.fixed,
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home_outlined),
           label: 'HOME',
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.group_outlined),
           label: 'COMUNNITY',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.now_widgets_outlined),
           label: 'NEWSUPDATE',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.mail_outline),
           label: 'NOTIFIKASI',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person_outline),
           label: 'PROFILE',
         )
       ],
     ),
   );
 }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

}

