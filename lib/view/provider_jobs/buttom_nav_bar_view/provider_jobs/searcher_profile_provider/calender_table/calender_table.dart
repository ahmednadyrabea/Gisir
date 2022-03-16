import 'package:flutter/material.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/calender_table/page/event_editing_page.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/calender_table/widget/calendar_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
class CalenderTable extends StatefulWidget {
  const CalenderTable({Key? key}) : super(key: key);

  @override
  _CalenderTableState createState() => _CalenderTableState();
}

class _CalenderTableState extends State<CalenderTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text(MyApp.title),
        centerTitle: true,
      ),
      body: CalendarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.red,
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EventEditingPage()),
        ),
      ),
    );
  }
}
