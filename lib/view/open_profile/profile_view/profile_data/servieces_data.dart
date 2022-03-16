import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';

class OpenServicesDataSearcher extends StatefulWidget {
  const OpenServicesDataSearcher({Key? key}) : super(key: key);

  @override
  State<OpenServicesDataSearcher> createState() =>
      _QualificationDataSearcherState();
}

class _QualificationDataSearcherState extends State<OpenServicesDataSearcher> {
  int index = 0;
  var items = [];



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
                  padding: EdgeInsets.only(top: 90.h, left: 220.w, right: 0.w,bottom: 30.w),
                  child: Text(
                    'خدماتى',
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 24.sp),
                  ),
                ),
                SingleChildScrollView(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return  Dismissible(
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

                          child: Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: EdgeInsets.only(right: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[index].toString(),style: TextStyle(
                                      color: Colors.black,fontSize: 22,fontWeight: FontWeight.w300
                                  ),),
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
      title: Text('اضافة'),
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: 150.w,
         height: 70.h,
          child: Column(
            children: [
              TextFormField(
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
            ],
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
