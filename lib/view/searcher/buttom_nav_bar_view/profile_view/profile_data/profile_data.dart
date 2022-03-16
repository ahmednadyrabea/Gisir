import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
class ProfileData extends StatelessWidget {
  const ProfileData({Key? key}) : super(key: key);

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

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Text('معلوماتى',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24.sp),),
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: AlignmentDirectional.topCenter,
                          image: AssetImage("assets/image 35.png"),
                          // fit: BoxFit.cover
                        ),
                      ),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 5.h,left: 212.w,right: 68.w),
                child: Text('الأسم',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
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
                padding:  EdgeInsets.only(top: 5.h,left: 212.w,right: 68.w),
                child: Text('الايميل',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
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
                padding:  EdgeInsets.only(top: 5.h,left: 212.w,right: 68.w),
                child: Text('المعدل',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
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
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('الجامعة',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
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
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('التخصص',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 30.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
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
              ),Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('نبذة عنى',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp),),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 51.w,left: 37.h,top: 10.h),
                child: Container(
                  width: 272.w,
                  height: 100.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
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
                padding:  EdgeInsets.only(top: 1.h),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'تعديل',
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
