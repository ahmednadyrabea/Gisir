import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/auth_view/log_in.dart';
import 'package:gesr/view/auth_view/sign_up.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 60.w, right: 60.w, top: 100.h),
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
                  height: 10.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 30.w),
                  child: Row(
                    children: [
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-10 / 360),
                        child: Image.asset(
                          'assets/image 8.png',
                          width: 80.w,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(-10 / 360),
                      child: Image.asset(
                        'assets/image 4.png',
                        width: 80.w,
                      ),
                    ),
                    Image.asset(
                      'assets/image 3.png',
                      width: 80.w,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    children: [
                      RotationTransition(
                        turns: AlwaysStoppedAnimation(-10 / 360),
                        child: Image.asset(
                          'assets/image 22.png',
                          width: 80.w,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(-10 / 360),
                      child: Image.asset(
                        'assets/image 6.png',
                        width: 80.w,
                      ),
                    ),
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(-10 / 360),
                      child: Image.asset(
                        'assets/image 2.png',
                        width: 80.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 110.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(-10 / 360),
                      child: Image.asset(
                        'assets/image 9.png',
                        width: 80.w,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              height: 70.h,
              left: 70.w,
              right: 70.w,
              bottom: 220.h,
              child: Text(
                'أهلا بك في تطبيق جسر',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Positioned(
              height: 60.h,
              left: 20.w,
              right: 20.w,
              bottom: 170.h,
              child: Container(
                width: double.infinity.w,
                child: Text(
                  'نحن نبني جسر الوصول لوظيفة أحلامك',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 60.h,
              left: 60.w,
              right: 60.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LogIn()),
                  );
                },
                child: Text(
                  'لنبدأ',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: color1),
              ),
            ),
            Positioned(
              bottom: 15.h,
              left: 60.w,
              right: 60.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: Text(
                  'انشاء حساب جديد',
                  style: TextStyle(fontSize: 20.sp),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: color2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
