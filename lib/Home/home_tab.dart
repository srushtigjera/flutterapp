import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_demo_cwic/Chat/chat_screen.dart';
import 'package:practice_demo_cwic/Favouriate/favourite_screen.dart';
import 'package:practice_demo_cwic/Home/home_screen.dart';
import 'package:practice_demo_cwic/Profile/profile_screen.dart';
import 'package:practice_demo_cwic/Utils/app_colors.dart';
import 'package:practice_demo_cwic/Utils/app_imges.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
   FavouriteScreen(),
   ChatScreen(),
   ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
    ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.home)),
                label: '',

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppImages.arcv)),
                label: '',
                   ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppImages.msg)),
              label: '',
                    ),
            BottomNavigationBarItem(
              icon: Icon(Icons.approval),
              label: '',
                          ),
          ],
         // type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,

          showSelectedLabels: false,
          showUnselectedLabels: false,

          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.greyColor,
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}


