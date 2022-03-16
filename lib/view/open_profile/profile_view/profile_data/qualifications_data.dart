import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';

class OpenQualificationDataSearcher extends StatefulWidget {
  const OpenQualificationDataSearcher({Key? key}) : super(key: key);

  @override
  State<OpenQualificationDataSearcher> createState() =>
      _OpenQualificationDataSearcherState();
}

class _OpenQualificationDataSearcherState extends State<OpenQualificationDataSearcher> {
  int index = 0;
  var items = ['مهندس', 'مدرب'];
  var itemsM = [];
  var itemsT = [];


  late TextEditingController controller;
  String name = '';
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
          child: Container(
            //alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: AlignmentDirectional.topCenter,
                image: AssetImage("assets/image 36.png"),
                // fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70.h, left: 173.w, right: 20.w),
                  child: Text(
                    'مؤهلاتى',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 98.h, left: 212.w, right: 68.w),
                  child: Text(
                    'الخبرات',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                  ),
                ),

                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Container(
                        width: 100.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Text(items[index].toString()),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: items.length),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 212.w, right: 68.w),
                  child: Text(
                    'المهارات',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                  ),
                ),
                  SizedBox(height: 70.h,),
                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = itemsM[index];
                      return Container(
                        width: 100.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Text(itemsM[index].toString()),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: itemsM.length),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 212.w, right: 68.w),
                  child: Text(
                    'التطوعات',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                  ),
                ),

                ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = itemsT[index];
                      return Container(
                        width: 100.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.w),
                          child: Text(itemsT[index].toString()),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: itemsT.length),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String?> openDialog() => showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('اضافة الخبرات'),
          content: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: 272.w,
              height: 40.h,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  submit();
                },
                child: Text('اضافة'))
          ],
        ),
      );
  void submit() {
    Navigator.of(context).pop(controller.text);
  }
}
