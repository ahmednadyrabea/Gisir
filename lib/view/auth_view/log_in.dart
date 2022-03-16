import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        //foregroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
      elevation: 0,
      //  backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 60.w, right: 60.w, top: 30.h),
              child: Container(
                width: 400.w,
                height: 122.h,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Image.asset('assets/jisir 2 1.png'),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              alignment: Alignment.topRight,
              width: double.infinity,
              height: 600.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100)),
                color: color3,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 50.h, left: 130.w),
                    child: Container(
                        child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp,
                          color: Colors.white),
                    )),
                  ),
                  SizedBox(height: 20.h,),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(35.0.w),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Positioned(
                          bottom: 80.h,
                          right: 20.w,
                          child: Container(
                            alignment: Alignment.center,
                            width: 170.w,
                            height: 40.h,
                            child: Text(
                              'اسم المستخدم',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: color3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(35.0.w),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Positioned(
                          bottom: 80.h,
                          right: 20.w,
                          child: Container(
                            alignment: Alignment.center,
                            width: 170.w,
                            height: 40.h,
                            child: Text(
                              'كلمة المرور',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: color3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h,),
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'االدخول',
                        style: TextStyle(fontSize: 23.sp, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    'هل نسيت كلمة المرور ؟',style: TextStyle(
                    fontSize: 18.sp
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
