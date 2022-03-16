import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';

class GroupData extends StatelessWidget {
  const GroupData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding:  EdgeInsets.all(8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'التدريب الصيفى',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.w500),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/iconn 1.png'),
                      radius: 70.w,
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.all(10.0.w),
                  child: Container(
                    width: 100.w,
                    height: 34.h,
                    child: ElevatedButton(
                      onPressed: () {
                        showCustomDialog(context);
                      },
                      child: Text('الانضمام'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: color1),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(10.0.w),
                  child: Text(
                    'المجال',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'علوم الحاسب ',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(10.0.w),
                  child: Text(
                    'الوصف ',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'مشاركة فرص التدريب فى مجال علوم الحاسب مشاركة فرص التدريب فى مجال علوم الحاسب  ',
                  style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context) => showDialog(
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding:  EdgeInsets.all(8.0.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 12.h),

                SizedBox(height: 12.h),
                Text(
                  'يا مرحبا تم الانضمام معانا',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(height: 12.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('تم'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: colorCon),
                ),
              ],
            ),
          ),
        ),
        context: context,
        barrierDismissible: false,
      );
}
