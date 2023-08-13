import 'package:flutter/material.dart';

class VenueFilter extends StatefulWidget {
  const VenueFilter({super.key});

  @override
  State<VenueFilter> createState() => _VenueFilterState();
}

class _VenueFilterState extends State<VenueFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text("FIlter venue"),
        ),
      ),
    );
  }
}
