import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cources/data/book_data.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cources/model/book.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cources/page/create_Group.dart';
import 'package:gesr/view/searcher/buttom_nav_bar_view/profile_view/side_menue/cources/widget/search_widget.dart';

class MyGroups extends StatefulWidget {
  @override
  MyGroupsState createState() => MyGroupsState();
}

class MyGroupsState extends State<MyGroups> {
  late List<Cource> books;
  String query = '';

  @override
  void initState() {
    super.initState();

    books = myGroups;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_forward_ios_sharp))
                    ],
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
        hintText: 'ابحث عن دورة',
        onChanged: searchBook,
      );

  Widget buildBook(Cource book) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 339,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        book.urlImage,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'المجال : ${book.author}',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('عرض'),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //  side: BorderSide(color: Colors.red)
                      ))),
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
                    SizedBox(
                      width: 20,
                    ),
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
