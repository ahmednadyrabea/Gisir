import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';


class OpenEditProfile extends StatefulWidget {
  const OpenEditProfile({Key? key}) : super(key: key);

  @override
  State<OpenEditProfile> createState() => _OpenEditProfileState();
}

class _OpenEditProfileState extends State<OpenEditProfile> {
  File? _image;


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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 42.h, right: 110.w, left: 110.w),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 60,
                  backgroundImage: _image == null ? null : FileImage(_image!),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 80.w, right: 80.w),
                child: Text(
                  'تعديل الملف الشخصى',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 212.w, right: 68.w),
                child: Text(
                  'الأسم',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 51.w, left: 37.h, top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 212.w, right: 68.w),
                child: Text(
                  'المجال',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 51.w, left: 37.h, top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 212.w, right: 68.w),
                child: Text(
                  'رفع',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 51.w, left: 37.h, top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 213.h),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'حفظ',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      primary: color4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
