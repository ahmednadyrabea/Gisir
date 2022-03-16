
import 'package:flutter/material.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/calender_table/model/event_data_source.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/calender_table/provider/event_provider.dart';
import 'package:gesr/view/provider_jobs/buttom_nav_bar_view/provider_jobs/searcher_profile_provider/calender_table/widget/tasks_widget.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;

    return SfCalendar(
      view: CalendarView.month,
      dataSource: EventDataSource(events),
      initialSelectedDate: DateTime.now(),
      cellBorderColor: Colors.transparent,
      onSelectionChanged: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);

        provider.setDate(details.date!);
      },
      onTap: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);

        if (provider.selectedDate == details.date) {
          showModalBottomSheet(
            context: context,
            builder: (context) => TasksWidget(),
          );
        }
      },
      onLongPress: (details) {
        final provider = Provider.of<EventProvider>(context, listen: false);

        provider.setDate(details.date!);
        showModalBottomSheet(
          context: context,
          builder: (context) => TasksWidget(),
        );
      },
    );
  }
}
