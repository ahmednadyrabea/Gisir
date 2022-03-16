import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/trainer/buttom_nav_bar_view/trainer_cources/accepted_people.dart';

class SelectionPeopleCources extends StatefulWidget {
  const SelectionPeopleCources({Key? key}) : super(key: key);

  @override
  State<SelectionPeopleCources> createState() => _SelectionPeopleCourcesState();
}

class _SelectionPeopleCourcesState extends State<SelectionPeopleCources> {
  int index = 0;
  List<Map<String,String>> items = [{'student_Name':'روان محمد','Student_img':'40'},{'student_Name':'احمد نادى','Student_img':'40'},{'student_Name':'ربيع محمد','Student_img':'40'}];
  List<Map<String,String>> itemsSelect = [{}];
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
                padding:  EdgeInsets.only(top: 5.h,right: 10.w),
                child: Row(
                  children: [
                    Text(
                      'المتقدمين',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 140.w,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AcceptedPeopleCources()));
                      },
                      child: Text('عرض المقبولين',
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          primary: colorQbol),
                    ),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: 500.w,
                  height: 1000.w,
                  decoration: BoxDecoration(
                    color: color7,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 5.w),
                              child: InkWell(
                                onTap: (){},
                                child: Container(
                                  width: 331.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                        Container(width: 32.w,
                                        height: 38.h,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                        ),
                                      Text(items[index]['student_Name'].toString(),
                                          style: TextStyle(
                                              fontSize: 13.sp, color: Colors.black,fontWeight:FontWeight.w400)),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            itemsSelect.add(items[index]);
                                            items.remove(items[index]);
                                            print(items);
                                          });
                                        },
                                        child: Text('قبول',
                                            style: TextStyle(
                                                fontSize: 14.sp, color: Colors.black)),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(16)),
                                            primary: colorQbol),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            items.remove(items[index]);
                                          });
                                        },
                                        child: Text('رفض',
                                            style: TextStyle(
                                                fontSize: 14.sp, color: Colors.black)),
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(16)),
                                            primary: colorRafd),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: items.length),
                      SizedBox(height: 50,),
                      Text(
                        'تعليقات الدورة',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                      ),
                      Center(
                        child:Container(
                          width: 300.h,
                          height: 150,
                          color: color2,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
