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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding:  EdgeInsets.all(8.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'التدريب الصيفى',
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
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
                      'اسم المدرب',
                      style:
                      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    ' سعيد كمال ',
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
                  Center(
                    child:Container(
                      width: 300.h,
                      height: 150,
                      color: color1,
                      child: ListView(
                        children: const <Widget>[
                          Card(child: ListTile(title: Text('التعليقات'))),
                          Card(
                            child: ListTile(
                              leading: FlutterLogo(size: 72.0),
                              title: Text('روان محمد'),
                              subtitle: Text(
                                  'الدورة مفيدة جدا '
                              ),
                              isThreeLine: true,
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: FlutterLogo(size: 72.0),
                              title: Text('محمد على'),
                              subtitle: Text(
                                  'هذا المدرب رائع جدا'
                              ),
                              isThreeLine: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          width: 270,
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'اضف تعليق',
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 60.w,
                          height: 34.h,
                          child: ElevatedButton(
                            onPressed: () {
                              showCustomDialog(context);
                            },
                            child: Text('اضف'),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                primary: colorDora),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.all(10.0.w),
                      child: Container(
                        width: 100.w,
                        height: 34.h,
                        child: ElevatedButton(
                          onPressed: () {
                            showCustomDialog(context);
                          },
                          child: Text('تسجيل'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: color1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                  'يا مرحبا تم التسجيل معانا',
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
