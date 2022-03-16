import 'package:flutter/material.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/chat/screens/home_screen.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/page/filter_local_list_page_job.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/notification/notification.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/profile_view.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/saves_view/saves_view.dart';

import 'home_get_job_view/home_get_job.dart';

class ProfileButtomViews extends StatefulWidget {
  const ProfileButtomViews({Key? key}) : super(key: key);

  @override
  _ButtomViewsState createState() => _ButtomViewsState();
}

class _ButtomViewsState extends State<ProfileButtomViews> {
  List<Widget> screens = [
    FilterLocalListPageJob(),
    SearcherSaves(),
    chatHomeScreen(),
    NotificationSearcher(),
    SearcherProfile(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (val) {
          setState(() {
            index = val;
          });
        },

        selectedItemColor: colorCon,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay_rounded,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ""),
        ],
      ),
      body: screens[index],
    );
  }
}
