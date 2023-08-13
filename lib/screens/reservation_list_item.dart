import 'package:flutter/material.dart';

class ReservationItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onBookNowPressed;

  const ReservationItem(
      {super.key, required this.itemName, required this.onBookNowPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFf4F6FD),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsetsDirectional.only(bottom: 10),
      child: ListTile(
        title: Text(itemName),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(
                  255, 135, 175, 255) // Change this to your desired color
              ),
          onPressed: onBookNowPressed,
          child: const Text('Book Now'),
        ),
      ),
    );
  }
}
