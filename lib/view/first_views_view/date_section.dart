import 'package:flutter/material.dart';

class DateSection extends StatelessWidget {
  const DateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Text("Day: ", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  Text("Sunday", style: TextStyle(
                    fontSize: 16,
                  ),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  Text("Date: ", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  Text("09/10/2024", style: TextStyle(
                    fontSize: 16
                  ),),
                ],
              ),
            ),
          ],
        ),
    );
  }
}