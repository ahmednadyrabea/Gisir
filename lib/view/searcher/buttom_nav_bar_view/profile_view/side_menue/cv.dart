import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';


class CV extends StatelessWidget {
  const CV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
                onTap: () => {Navigator.of(context).pop()},
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                title: Text(
                  'الدورات التدربية',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
                onTap: () => {Navigator.of(context).pop()},
              ),
              SizedBox(
                height: 35.h,
              ),
              ListTile(
                title: Text(
                  'قوالب السيرة الذاتية',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
                ),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => CV()))
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
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 128.w,
                    height: 38.h,
                    child: Text(
                      'قوالب سيرة ذاتية',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: color1, borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () async{
                      final url = 'https://www.facebook.com';
                    // if (await canLaunch(url)){
                    //   await launch(
                    //     url,
                    //     forceSafariVC: false,
                    //   );
                    // }
                      try {
                        await launch(
                          url,
                          enableJavaScript: true,
                        );
                        //return true;
                      } catch (e) {
                        log(e.toString());
                        //return false;
                      }
                      },
                    child: Container(
                      width: 339.w,
                      height: 222.h,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Text(
                            'قوالب متاحه الاستخدام عن طريق Canva',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp,
                                color: Colors.black),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(children: [
                              Image.asset('assets/Untitled 4 2.png'),
                              Image.asset('assets/Untitled 5 1.png'),
                              Image.asset('assets/Untitled 6 1.png'),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () async{
                      final url = 'https://www.facebook.com';
                      // if (await canLaunch(url)){
                      //   await launch(
                      //     url,
                      //     forceSafariVC: false,
                      //   );
                      // }
                      try {
                        await launch(
                          url,
                          enableJavaScript: true,
                        );
                        //return true;
                      } catch (e) {
                        log(e.toString());
                        //return false;
                      }
                    },
                    child: Container(
                      width: 339.w,
                      height: 222.h,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Text(
                            'قوالب متاحه الاستخدام عن طريق Canva',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp,
                                color: Colors.black),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(children: [
                              Image.asset('assets/Untitled 4 2.png'),
                              Image.asset('assets/Untitled 5 1.png'),
                              Image.asset('assets/Untitled 6 1.png'),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () async{
                      final url = 'https://www.facebook.com';
                      // if (await canLaunch(url)){
                      //   await launch(
                      //     url,
                      //     forceSafariVC: false,
                      //   );
                      // }
                      try {
                        await launch(
                          url,
                          enableJavaScript: true,
                        );
                        //return true;
                      } catch (e) {
                        log(e.toString());
                        //return false;
                      }
                    },
                    child: Container(
                      width: 339.w,
                      height: 222.h,
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Text(
                            'قوالب متاحه الاستخدام عن طريق Canva',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17.sp,
                                color: Colors.black),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(children: [
                              Image.asset('assets/Untitled 4 2.png'),
                              Image.asset('assets/Untitled 5 1.png'),
                              Image.asset('assets/Untitled 6 1.png'),
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
