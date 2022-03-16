import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/people_selcetion_jobs.dart';
import 'package:gesr/view/trainer/buttom_nav_bar_view/trainer_cources/people_selcetion.dart';

class ProviderJobs extends StatefulWidget {
  const ProviderJobs({Key? key}) : super(key: key);

  @override
  State<ProviderJobs> createState() => _ProviderJobsState();
}

class _ProviderJobsState extends State<ProviderJobs> {
  int index = 0;
  List<Map<String,String>> items = [{'course_name':'برمجة ','course_users':'40'},{'course_name':'محاسبة','course_users':'20'},{'course_name':'تصميم','course_users':'33'},];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 180.w, top: 50.h),
                child: Text(
                  'الوظائف',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.w),
                      child: InkWell(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const MyCoursesTrainer()),
                          // );
                          Navigator.push(context,MaterialPageRoute(builder: (context) => const SelectionPeopleJobs()));
                        },
                        child: Container(
                          width: 331.w,
                          height: 82.h,
                          decoration: BoxDecoration(
                            color: colorDora,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(items[index]['course_name'].toString(),style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600
                                ),),
                                SizedBox(width: 90,),
                                Container(
                                    width: 80.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                      color: colorDora,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(right: 10.w),
                                      child: Text(items[index]['course_users'].toString()+' متقدم'),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: items.length),
            ],
          ),
        ),
      ),
    );
  }
}
