import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/profile_view/profile_data/Jobs.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/profile_view/profile_data/edit_profie.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/profile_view/profile_data/profile_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/Groups/page/filter_local_list_page.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cources/page/filter_local_list_page.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cv.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/help.dart';

class ProviderProfile extends StatelessWidget {
  const ProviderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                width: 400.w,
                height: 122.h,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Image.asset('assets/jisir 2 1.png'),
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                title: Text(
                  'الصفحة الرئيسية',
                  style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                title: Text(
                  'المجموعات',
                  style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => FilterLocalListPage()))
                },
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                title: Text(
                  'المساعدة',
                  style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => Help()))
                },
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                title: Text(
                  'تسجيل خروج',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: Colors.red),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,

        body: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: [
                Stack(
                  // alignment: Alignment.bottomLeft,
                  fit: StackFit.passthrough,
                  overflow: Overflow.visible,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topLeft,
                        colors: [
                          color5,
                          color4,
                        ],
                      )),
                    ),
                    Positioned(
                      top: 150.h,
                      height: 200.h,
                      width: 320.h,
                      child: Container(
                        width: 200.w,
                        height: 200.h,
                        //alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 30.0,
                              spreadRadius: 1,
                              offset: Offset(
                                10.0,
                                5.0,
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Column(
                            children: [
                              Text(
                                'روان محمد',
                                style: TextStyle(
                                    fontSize: 18.sp, fontWeight: FontWeight.w600),
                              ),Padding(
                                padding:  EdgeInsets.only(right: 60.w),
                                child: Text(
                                  'شركة الاتصالات السعودية',
                                  style: TextStyle(
                                      fontSize: 15.sp, fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 30.h, right: 40.w,left: 40.w),
                                child: Container(
                                  width: 91.w,
                                  height: 81.h,
                                  decoration: BoxDecoration(
                                      color: colorCon,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    children: [
                                      Text(
                                        '20',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'متابع',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 32.w,
                      top: 110.h,
                      child: Container(
                        //color: Colors.orange,
                        width: 95.w,
                        height: 120.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 20.0,
                              spreadRadius: -5,
                              offset: Offset(
                                1.0,
                                1.0,
                              ),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/image 32.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 35.w,
                        right: 300.h,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileProvider()));
                            }, icon: Icon(Icons.edit_outlined),),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 200.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProfileDataProvider()),
                          );
                        },
                        child: Container(
                          width: 140.w,
                          height: 245.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 10.0,
                                spreadRadius: -5,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/Saly-22.png',width: 150.w,height: 150.h,),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'المعلومات',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const JopsProvider()),
                          );
                        },
                        child: Container(
                          width: 140.w,
                          height: 245.h,
                          decoration: BoxDecoration(
                            color: color5,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 10.0,
                                spreadRadius: -5,
                                offset: Offset(
                                  1.0,
                                  1.0,
                                ),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/image 39.png',width: 150.w,height: 150.h,),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'الوظائف',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
