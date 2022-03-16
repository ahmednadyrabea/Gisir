import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/profile_view/profile_data/add_job.dart';
import 'package:gesr/view/trainer/buttom_nav_bar_view/profile_view/profile_data/edit_cource_data.dart';

class JopsProvider extends StatefulWidget {
  const JopsProvider({Key? key}) : super(key: key);

  @override
  State<JopsProvider> createState() => _JopsProviderState();
}

class _JopsProviderState extends State<JopsProvider> {
  int index = 0;
  var items = ['مطور برمجيات'];
  var items1 = ['خبرة سنتين والعمل تحت ضغط'];

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
      resizeToAvoidBottomInset: false,
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
                image: AssetImage("assets/image 37.png"),
                // fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 90.h, left: 220.w, right: 0.w, bottom: 30.w),
                  child: Text(
                    'الوظائف',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80.h),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                     EditCourseDataProvider()),
                          );
                        },
                        icon: Icon(Icons.add),
                      ),
                      Text('اضافة'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return Dismissible(
                          // Each Dismissible must contain a Key. Keys allow Flutter to
                          // uniquely identify widgets.
                          key: Key(item),
                          // Provide a function that tells the app
                          // what to do after an item has been swiped away.
                          onDismissed: (direction) {
                            // Remove the item from the data source.
                            setState(() {
                              items.removeAt(index);
                            });

                            // Then show a snackbar.
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('$item dismissed')));
                          },

                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 40.w),
                            child: Container(
                              width: 100.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[index].toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      items1[index].toString(),
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300),
                                    ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
