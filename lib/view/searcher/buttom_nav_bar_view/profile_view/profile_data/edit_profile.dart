import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gesr/view/record/record.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _image;
  void pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image as File?;
    });
  }

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
                child: InkWell(
                  onTap: pickImage,
                  child: Text(
                    'تعديل الملف الشخصى',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
                  ),
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
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: const Offset(1, 3),
                      ),
                    ],
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
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 212.w, right: 68.w),
                child: Text(
                  'مقطع',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h,left: 130.w),
                child: ElevatedButton(
                  onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context) => RecordingScreen()));
                  },
                  child: Text(
                    'مقطع صوتى',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      primary: color1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.h),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'حفظ',
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
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
