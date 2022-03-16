import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/saves_view/accept_page.dart';

class SearcherSaves extends StatefulWidget {
  const SearcherSaves({Key? key}) : super(key: key);

  @override
  State<SearcherSaves> createState() => _SearcherSavesState();
}

class _SearcherSavesState extends State<SearcherSaves> {
  int index = 0;
  List<Map<String,String>> items = [{'student_Name':' محلل بيانات','Student_img':'40'},{'student_Name':' خبير امن سيبرانى','Student_img':'40'},{'student_Name':'مدير مشروعات ','Student_img':'40'}];
  List<Map<String,dynamic>> itemsJob = [{'student_Name':' محلل بيانات','Student_img':colorQbol,'student_status':'مقبول ',},{'student_Name':' محلل بيانات','Student_img':Colors.brown,'student_status':'مرفوض ',},{'student_Name':' محلل بيانات ','Student_img':Colors.grey,'student_status':'معلق ',},{'student_Name':' محلل بيانات ','student_status':'معلق ','Student_img':Colors.grey}];
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
                      'المحفوظات',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 140.w,),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: 500.w,
                  height: 200.w,
                  decoration: BoxDecoration(
                      color: color7,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: ListView.separated(
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
                                  //SizedBox(width: 40.w,),
                                  Container(width: 32.w,
                                    height: 38.h,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                  ),
                                  SizedBox(width: 20.w,),
                                  Text(items[index]['student_Name'].toString(),
                                      style: TextStyle(
                                          fontSize: 13.sp, color: Colors.black,fontWeight:FontWeight.w400)),

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
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 5.h,right: 10.w),
                child: Row(
                  children: [
                    Text(
                      'الوظائف المتقدم لها',
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 140.w,),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: 500.w,
                  height: 250.w,
                  decoration: BoxDecoration(
                      color: color7,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final item = itemsJob[index];
                        return Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: 331.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  //SizedBox(width: 40.w,),
                                  Container(width: 32.w,
                                    height: 38.h,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                  ),
                                //  SizedBox(width: 20.w,),
                                  Text(itemsJob[index]['student_Name'].toString(),
                                      style: TextStyle(
                                          fontSize: 13.sp, color: Colors.black,fontWeight:FontWeight.w400)),
                              //   SizedBox(width: 20.w,),
                                  ElevatedButton(
                                    onPressed: () {
                                      itemsSelect.add(items[index]);
                                      items.remove(items[index]);
                                      print(items);
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => AcceptPage()));
                                    },
                                    child: Text(itemsJob[index]['student_status'].toString(),
                                        style: TextStyle(
                                            fontSize: 14.sp, color: Colors.white)),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16)),
                                        primary: itemsJob[index]['Student_img']),
                                  ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
