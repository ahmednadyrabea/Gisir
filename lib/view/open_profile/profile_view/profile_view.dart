

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/chat/models/message_model.dart';
import 'package:gesr/view/chat/screens/chat_screen.dart';
import 'package:gesr/view/open_profile/profile_view/profile_data/profile_data.dart';
import 'package:gesr/view/open_profile/profile_view/profile_data/qualifications_data.dart';
import 'package:gesr/view/open_profile/profile_view/profile_data/servieces_data.dart';

class OpenSearcherProfile extends StatelessWidget {
  const OpenSearcherProfile({Key? key}) : super(key: key);

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
                    child: Padding(
                      padding:  EdgeInsets.only(right: 170.w,top: 35.h),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('متابعة',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                primary: colorCon),
                          ),
                          SizedBox(width: 20.w,),
                          ElevatedButton(
                            onPressed: () {
                              final Message chat = chats[0];
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(user: chat.sender )));
                            },
                            child: Text('مراسلة',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.black)),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                primary: colorCon),
                          )
                        ],
                      ),
                    ),
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
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          children: [
                            Text(
                              'روان محمد',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'علوم الحاسب',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 30.h, right: 40.w),
                                  child: Container(
                                    width: 91.w,
                                    height: 81.h,
                                    decoration: BoxDecoration(
                                        color: colorCon,
                                        borderRadius:
                                            BorderRadius.circular(16)),
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
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 50, top: 30.h),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 91.w,
                                    height: 81.h,
                                    decoration: BoxDecoration(
                                        color: colorCon,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5.h),
                                          child: Container(
                                            width: 72.w,
                                            height: 21.h,
                                            child: Image.asset(
                                                'assets/image 18.png'),
                                          ),
                                        ),
                                        Text(
                                          'المقطع الصوتى التعريفى',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 200.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OpenProfileData()),
                            );
                          },
                          child: Container(
                            width: 131.w,
                            height: 118.h,
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
                                Image.asset(
                                  'assets/Saly-22.png',
                                  width: 91.w,
                                  height: 70.h,
                                ),
                                //SizedBox(height: 10.h,),
                                Text(
                                  'معلوماتى',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OpenQualificationDataSearcher()),
                            );
                          },
                          child: Container(
                            width: 131.w,
                            height: 118.h,
                            decoration: BoxDecoration(
                              color: color6,
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
                                Image.asset(
                                  'assets/Saly-10.png',
                                  width: 108.w,
                                  height: 85.h,
                                ),
                                //SizedBox(height: 10.h,),
                                Text(
                                  'مؤهلاتى',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OpenServicesDataSearcher()),
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
                            Image.asset('assets/Saly-19.png'),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'خدماتى',
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
    );
  }
}
