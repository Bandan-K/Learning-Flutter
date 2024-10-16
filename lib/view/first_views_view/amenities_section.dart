import 'package:flutter/material.dart';

class AmenitiesSection extends StatelessWidget {
  const AmenitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.pool, size: 36,),
        SizedBox(width: 12,),
        Text("Amenities", style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),)
      ],
    );
  }
}
