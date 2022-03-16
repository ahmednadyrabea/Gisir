
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gesr/view/open_profile/profile_view/profile_data/edit_profile.dart';
import 'package:gesr/view/open_profile/profile_view/profile_view.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/data/job_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/model/job.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/home_get_job_view/widget/search_widget.dart';
class SearchForMember extends StatefulWidget {
  @override
  SearchForMemberState createState() => SearchForMemberState();
}

class SearchForMemberState extends State<SearchForMember> {
  late List<Job> books;
  String query = '';

  @override
  void initState() {
    super.initState();

    books = myGroups;
  }

  @override
  Widget build(BuildContext context) => Scaffold(

    body: SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_forward_ios_sharp))
              ],
            ),
          ),
          buildSearch(),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];

                  return buildBook(book);
                },
              ),
            ),
          ),
        ],
      ),
    ),
  );

  Widget buildSearch() => SearchWidgetJob(
    text: query,
    hintText: 'ابحث عن عضو',
    onChanged: searchBook,
  );

  Widget buildBook(Job book) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 331,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(width: 32,
            height: 38,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16)
            ),
          ),
          SizedBox(width: 20,),
          InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => OpenSearcherProfile()));},
            child: Text('احمد نادى',
                style: TextStyle(
                    fontSize: 13, color: Colors.black,fontWeight:FontWeight.w400)),
          ),
        ],
      ),
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
