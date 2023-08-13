import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:timex_mobile_app/screens/bottom_bar.dart';
import 'package:timex_mobile_app/screens/reservation_list_item.dart';
import 'package:timex_mobile_app/screens/reservation_screen.dart';
import 'package:timex_mobile_app/screens/venue_filter_screen.dart';
import 'package:timex_mobile_app/utils/app_styles.dart';

class ReservationList extends StatefulWidget {
  const ReservationList({super.key});

  @override
  State<ReservationList> createState() => _ReservationListState();
}

class _ReservationListState extends State<ReservationList> {
  void _openReservationScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ReservationScreen()),
    );
  }

  void _openVenueFilterScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const VenueFilter();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Column(
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Venue List",
                        style: Styles.headingStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Indoor gymnasiums",
                        style: Styles.headingStyle1,
                      ),
                    ],
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blueAccent),
                        onPressed: _openVenueFilterScreen,
                        child: const Text("Filter")),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFf4F6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xffBFC205),
                    ),
                    Text(
                      "Search",
                      style: Styles.headingStyle4,
                    )
                  ],
                ),
              ),
              const Gap(25),
              ReservationItem(
                itemName: 'Bamarandage Badminton Stadium',
                onBookNowPressed: _openReservationScreen,
              ),
              ReservationItem(
                itemName: 'Aspire Badminton & Activity Center',
                onBookNowPressed: _openReservationScreen,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
