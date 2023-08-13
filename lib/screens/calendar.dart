import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:table_calendar/table_calendar.dart'; // Import the package
import '../utils/app_styles.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  // Create a controller

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime firstDay = DateTime(now.year - 1, now.month);
    final DateTime lastDay = DateTime(now.year + 1, now.month);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Gap(20),
                  Column(
                    children: [
                      const Gap(5),
                      Text(
                        "Your reservations",
                        style: Styles.headingStyle1,
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(25),
              // Insert the calendar widget here
              TableCalendar(
                firstDay: firstDay,
                lastDay: lastDay,
                focusedDay: now,
              ),
            ],
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    super.dispose();
  }
}
