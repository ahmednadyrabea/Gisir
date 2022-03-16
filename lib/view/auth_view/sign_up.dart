import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/buttom_vav_bar_view.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/buttom_vav_bar_view.dart';
import 'package:gesr/view/trainer/buttom_nav_bar_view/buttom_vav_bar_view.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String dropdownValue = 'باحث عن وظيفة';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 1000.h,
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
                      'انشاء حساب',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp,
                          color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 10.w, right: 0.w),
                            child: Container(
                              width: 155.w,
                              height: 50.h,
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
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Positioned(
                              bottom: 30.h,
                              right: -15.w,
                             // left: 80.w,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 120.w,
                                height: 100.h,
                                child: Text(
                                  'الاسم الاخير',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
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
                            padding:  EdgeInsets.only(right: 20.w, left: 20.w),
                            child: Container(
                              width: 155.w,
                              height: 50.h,
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
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Positioned(
                              bottom: 30.h,
                              right: 3.w,
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                width: 120.w,
                                height: 100.h,
                                child: Text(
                                  'الاسم الاول',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.sp,
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
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(35.0),
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
                            width: 150.w,
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
                              color: color4,
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
                              'البريد الالكترونى',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
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
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(35.0),
                        //   child: TextFormField(
                        //     decoration: InputDecoration(
                        //       filled: true,
                        //       fillColor: Colors.white,
                        //       focusedBorder: OutlineInputBorder(
                        //         borderSide: BorderSide(color: Colors.white),
                        //         borderRadius: BorderRadius.circular(25.7),
                        //       ),
                        //       enabledBorder: OutlineInputBorder(
                        //         borderSide: BorderSide(color: Colors.white),
                        //         borderRadius: BorderRadius.circular(25.7),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding:  EdgeInsets.all(35.0.w),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButtonFormField<String>(
                              //borderRadius: BorderRadius.circular(20),
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
                              value: dropdownValue,
                              icon: const Icon(Icons.keyboard_arrow_down_sharp),
                              elevation: 16,
                              style: const TextStyle(color: Colors.deepPurple),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>['باحث عن وظيفة', 'مقدم وظيفة', 'مقدم دورة']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(value)),
                                );
                              }).toList(),
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
                                'نوع الحساب',
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
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 200.w,
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () {
                        if (dropdownValue == 'باحث عن وظيفة') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ProfileButtomViews()),
                          );
                        } else if (dropdownValue == 'مقدم وظيفة') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ProviderButtomViews()),
                          );
                        } else if (dropdownValue == 'مقدم دورة') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TrainerProfileButtomViews()),
                          );
                        }
                      },
                      child: Text(
                        'االدخول',
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.white),
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
