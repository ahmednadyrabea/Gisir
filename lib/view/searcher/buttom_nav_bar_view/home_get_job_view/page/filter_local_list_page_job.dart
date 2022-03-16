import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/data/job_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/model/job.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/page/search_for_member.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/widget/search_widget.dart';

import 'job_data.dart';

class FilterLocalListPageJob extends StatefulWidget {
  @override
  FilterLocalListPageJobState createState() => FilterLocalListPageJobState();
}

class FilterLocalListPageJobState extends State<FilterLocalListPageJob> {
  late List<Job> books;
  String query = '';

  @override
  void initState() {
    super.initState();

    books = allJobs;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'جد وظيفة احلامك',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                buildSearch(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        width: 165,
                        height: 39,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('البحث بالخريطة'),
                              Icon(Icons.map),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) => SearchForMember()));
                        },
                        child: Container(
                          width: 100,
                          height: 39,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('بحث عن عضو '),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(0, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Text(
                        'المجال ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(0, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Text(
                        'المدينة ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 85,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(0, 1), // Shadow position
                          ),
                        ],
                      ),
                      child: Text(
                        'نوع الدوام ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
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

  Widget buildSearch() => SearchWidgetJob(
        text: query,
        hintText: 'ابحث',
        onChanged: searchBook,
      );

  Widget buildBook(Job book) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 150,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JobData()));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey)),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Flexible(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180),
                                    child: Text(
                                      book.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                  ),
                                  Text(
                                    '${book.author}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.save))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -1,
              right: 1,
              child: Container(
                width: 66,
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      );

  void searchBook(String query) {
    final books = allJobs.where((book) {
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
