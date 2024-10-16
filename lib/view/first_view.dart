import 'package:flutter/material.dart';
import 'package:task_1/view/HelperView/my_sized_box.dart';
import 'package:task_1/view/first_views_view/add_amenities.dart';
import 'package:task_1/view/first_views_view/amenities_section.dart';
import 'package:task_1/view/first_views_view/date_section.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Person Icon
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(56 / 2)),
              child: const Icon(
                Icons.person,
                size: 32,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Hii, GateKeeper",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          SizedBox(
            width: 60,
            child: Icon(
              Icons.settings,
              size: 36,
            ),
          )
        ],
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DateSection(),
              MySizedBox(),
              MySizedBox(),
              AmenitiesSection(),
              MySizedBox(),
              MySizedBox(),
              AddAmenities(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 36,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.apartment), label: "Building"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        backgroundColor: Colors.blue[200],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
