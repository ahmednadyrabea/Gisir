// @dart=2.9
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/view/auth_view/auth_screen.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/buttom_vav_bar_view.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/calender_table/provider/event_provider.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/buttom_vav_bar_view.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/profile_data/edit_profile.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/profile_data/profile_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/profile_data/qualifications_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/profile_data/servieces_data.dart';
import 'package:gesr/view/trainer/buttom_nav_bar_view/buttom_vav_bar_view.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: ('Cairo'),
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(
              seconds: 3,
              navigateAfterSeconds: AuthScreen(),
              title: new Text(
                'مرحبا بك',
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.black),
              ),
              image: new Image.asset('assets/image 17.png'),
              photoSize: 150.0,
              backgroundColor: Colors.white,
              styleTextUnderTheLoader: new TextStyle(),
              loaderColor: Colors.white
          )
        ),
      ),
     designSize: const Size(360,800),
    );
  }
}


