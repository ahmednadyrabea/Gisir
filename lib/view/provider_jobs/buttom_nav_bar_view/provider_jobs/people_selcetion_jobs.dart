import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/searcher_profile_provider.dart';
import 'package:gesr/view/trainer/buttom_nav_bar_view/trainer_cources/accepted_people.dart';

import 'searcher_profile_provider/calender_table/calender_table.dart';

class SelectionPeopleJobs extends StatefulWidget {
  const SelectionPeopleJobs({Key? key}) : super(key: key);

  @override
  State<SelectionPeopleJobs> createState() => _SelectionPeopleJobsState();
}

class _SelectionPeopleJobsState extends State<SelectionPeopleJobs> {
  int index = 0;
  String dropdownValue = '3-4';
  String dropdownValue2 = 'جامعة الملك سلمان';
  String dropdownValue3 = 'علوم الحاسب';
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    Container(width: 32.w,
                                    height: 38.h,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(16)
                                    ),
                                    ),
                                  SizedBox(width: 20.w,),
                                  InkWell(
                                    onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => SearcherProfileForProvider()));
                                    },
                                    child: Text(items[index]['student_Name'].toString(),
                                        style: TextStyle(
                                            fontSize: 13.sp, color: Colors.black,fontWeight:FontWeight.w400)),
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
              Padding(
                padding:  EdgeInsets.only(left: 200.w,bottom: 10.h),
                child: Text(
                  'المعدل',
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
                    items: <String>['1-2', '2-3', '3-4']
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
                  'الجامعة',
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
                    items: <String>['جامعة الملك سلمان', 'جامعضة 6 اكتوبر', 'جامعسة القاهرة ']
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
                  'التخصص',
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderTable()));
                },
                child: Text('جدول المقابلات',
                    style: TextStyle(
                        fontSize: 16.sp, color: Colors.black)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    primary: color1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
