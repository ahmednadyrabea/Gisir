import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
class OpenProfileData extends StatelessWidget {
  const OpenProfileData({Key? key}) : super(key: key);

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
                child: Text('الأسم',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp),),
              ),
              Text('احمد نادى ربيع',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
              Padding(
                padding:  EdgeInsets.only(top: 5.h,left: 212.w,right: 68.w),
                child: Text('الايميل',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp),),
              ),
              Text('ahmednadyrm@gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
              Padding(
                padding:  EdgeInsets.only(top: 5.h,left: 212.w,right: 68.w),
                child: Text('المعدل',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp),),
              ),
              Text('3',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('الجامعة',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp),),
              ),
              Text('جامعة 6اكتوبر ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('التخصص',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp),),
              ),
              Text(  'علوم الحاسب',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 212.w,right: 68.w),
                child: Text('نبذة عنى',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.sp),),
              ),
              Text('خبير امن سيبرانى ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp),),
            ],
          ),
        ),
      ),
    );
  }
}
