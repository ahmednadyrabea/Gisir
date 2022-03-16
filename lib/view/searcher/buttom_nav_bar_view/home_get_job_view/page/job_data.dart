import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
class JobData extends StatelessWidget {
  const JobData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Center(child: Text('معلومات الوظيفة',style: TextStyle(color: Colors.black),)),
        //foregroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: color1,
        elevation: 0,
        //  backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding:  EdgeInsets.only(left: 100.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('اسم الوظيفة',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                Text('خبير امن سيبرانى',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
                Text('الوصف',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                Text('معرفة اساسيات امن سيبرانى',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
                Text('التخصص',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                Text('علوم الحاسب',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
                Text('الجهة',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                Text('STC',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
                Text('نوع العمل',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                Text('طبيعة العمل',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),Text('نوع العمل',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                Text('حضورى',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
                Padding(
                  padding:  EdgeInsets.only(top: 50.h,right: 100.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'تقديم',
                      style: TextStyle(fontSize: 18.sp, color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        primary: color4),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 10.h,right: 100.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'حفظ',
                      style: TextStyle(fontSize: 18.sp, color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        primary: color1),
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
