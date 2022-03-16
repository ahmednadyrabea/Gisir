import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/chat/models/message_model.dart';
import 'package:gesr/view/chat/screens/chat_screen.dart';

class AcceptedPeopleCources extends StatefulWidget {
  const AcceptedPeopleCources({Key? key}) : super(key: key);

  @override
  State<AcceptedPeopleCources> createState() => _AcceptedPeopleCourcesState();
}

class _AcceptedPeopleCourcesState extends State<AcceptedPeopleCources> {
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
                      'المقبولين',
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
                                      itemsSelect.add(items[index]);

                                      print(items);
                                      final Message chat = chats[0];
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(user: chat.sender )));

                                    },
                                    child: Text('التواصل',
                                        style: TextStyle(
                                            fontSize: 14.sp, color: Colors.black)),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16)),
                                        primary: colorCon),
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
