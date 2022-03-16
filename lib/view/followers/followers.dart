import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/searcher_profile_provider.dart';
class Followers extends StatelessWidget {
  List<Map<String,String>> items = [{'student_Name':'روان محمد','Student_img':'40'},{'student_Name':'احمد نادى','Student_img':'40'},{'student_Name':'ربيع محمد','Student_img':'40'}];
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5.w),
        child: Container(
          width: 500.w,
          height: 500.w,
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
    );
  }
}
