
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gesr/constants/constants.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/Groups/data/book_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/Groups/model/book.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/Groups/page/group_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/Groups/page/my_Groups.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/Groups/widget/search_widget.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cv.dart';

class FilterLocalListPage extends StatefulWidget {
  @override
  FilterLocalListPageState createState() => FilterLocalListPageState();
}

class FilterLocalListPageState extends State<FilterLocalListPage> {
  late List<Book> books;
  String query = '';

  @override
  void initState() {
    super.initState();

    books = allBooks;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: 400.w,
            height: 122.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Image.asset('assets/jisir 2 1.png'),
          ),
          SizedBox(
            height: 35.h,
          ),
          ListTile(
            title: Text(
              'الصفحة الرئيسية',
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
            onTap: () => {},
          ),
          SizedBox(
            height: 35.h,
          ),
          ListTile(
            title: Text(
              'المجموعات',
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => FilterLocalListPage()))},
          ),
          SizedBox(
            height: 35.h,
          ),
          ListTile(
            title: Text(
              'الدورات التدربية',
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(
            height: 35.h,
          ),
          ListTile(
            title: Text(
              'قوالب السيرة الذاتية',
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
            ),
            onTap: () => {Navigator.push(context, MaterialPageRoute(builder: (c) => CV()))},
          ),
          SizedBox(
            height: 35.h,
          ),
          ListTile(
            title: Text(
              'تسجيل خروج',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: Colors.red),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    ),

        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(left: 200,top: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (c) => MyGroups()));
                    },
                    child: Container(
                      width: 128,
                      height: 38,
                      child: Text(
                        'مجموعاتك',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                buildSearch(),
                Expanded(
                  child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];

                      return buildBook(book);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'ابحث عن مجموعة',
        onChanged: searchBook,
      );

  Widget buildBook(Book book) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 339,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Text(
                book.title,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
             SizedBox(height: 10,),
             Row(
               children: [
                 CircleAvatar(
                   backgroundImage:
                   NetworkImage( book.urlImage,),
                 ),
                 SizedBox(width: 10,),
                 Text(
                   'المجال : ${book.author}',
                   style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize: 15,
                       color: Colors.black),
                 ),
                 SizedBox(width: 80,),
                 ElevatedButton(onPressed: (){

                   Navigator.push(context, MaterialPageRoute(builder: (context) => GroupData()));
                 }, child: Text('عرض'),style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)),
                     primary: color1),
                 )
               ],
             ),
            Row(
              children: [
                Text(
                  book.data,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: Colors.grey),
                ),
                SizedBox(width: 20,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(book.groupUser.toString()),
                    Icon(Icons.account_box_rounded),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );

  void searchBook(String query) {
    final books = allBooks.where((book) {
      final titleLower = book.title.toLowerCase();
      final authorLower = book.author.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.books = books;
    });
  }
}
