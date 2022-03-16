import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
class AcceptPage extends StatelessWidget {
  const AcceptPage({Key? key}) : super(key: key);

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
            padding:  EdgeInsets.only(left: 100.w,right: 20),
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
                Text('طبيعة العمل',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text(' 9:00PM',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                    SizedBox(width: 20,),
                    Text(' 15/3/2022',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),),
                  ],
                ),
                Text('الحضور بالزى السعودى عدم التاخير لاكثر من 25 دقيقة',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16.sp,color: Colors.red),),
                Center(child: Text('الموقع',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color3),)),
                Center(child: Text('اضغط هنا',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp,color: color1),)),


              ],
            ),
          ),
        ),
      ),
    );
  }


}
