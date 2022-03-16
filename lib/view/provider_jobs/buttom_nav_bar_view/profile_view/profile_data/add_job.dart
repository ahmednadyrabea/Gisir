import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';

class EditCourseDataProvider extends StatefulWidget {

  @override
  State<EditCourseDataProvider> createState() => _EditCourseDataProviderState();
}

class _EditCourseDataProviderState extends State<EditCourseDataProvider> {
  String dropdownValue = 'دوام كلى';

  String dropdownValue2 = 'الرياض';

  String dropdownValue3 = 'علوم الحاسب';

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
                padding:  EdgeInsets.only(top: 15.h,left: 80.w,right: 80.w),
                child: Text('اضافة وظيفة جديدة ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 181.w,right: 68.w),
                child: Text('الوظيفة',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text(' التخصص',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('الجهة',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 10,
                        offset: const Offset(1, 3),
                      ),
                    ],
                  ),
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('الوصف',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 1000,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  width: 272.w,
                  height: 150.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 200.w,bottom: 10.h),
                child: Text(
                  'نوع الدوام',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35),
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
                    items: <String>['دوام كلى', 'دوام جزئى']
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
              Padding(
                padding:  EdgeInsets.only(left: 200.w,bottom: 10.h),
                child: Text(
                  'المدينة',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35),
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
                    value: dropdownValue2,
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    items: <String>['الرياض', 'المدينة', 'جدة']
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
              Padding(
                padding:  EdgeInsets.only(left: 200.w,bottom: 10.h),
                child: Text(
                  'المجال',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 35),
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
                    value: dropdownValue3,
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue3 = newValue!;
                      });
                    },
                    items: <String>['علوم الحاسب', 'نظم المعلومات', 'الحاسب الالى']
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
              Padding(
                padding:  EdgeInsets.only(top: 20.h),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'اضافة',
                    style: TextStyle(fontSize: 18.sp, color: Colors.white,fontWeight: FontWeight.w400),
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
