import 'package:flutter/material.dart';
import 'package:task_1/view/HelperView/my_sized_box.dart';

class AddAmenities extends StatelessWidget {
  const AddAmenities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.blue[200]!),
      ], borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const MySizedBox(),
            // Browse Image
            Container(
              height: 250,
              width: 225,
              decoration: BoxDecoration(
                  boxShadow: const [BoxShadow(color: Colors.blueAccent)],
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              // Image Text
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tap to browse",
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                  Text(
                    "Images",
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  )
                ],
              ),
            ),
            const MySizedBox(),
            const MySizedBox(),
            // Name Field
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white)],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Name :",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const MySizedBox(),
            const MySizedBox(),
            // Add Amenity Button
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.blue)],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Add Amenity",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const MySizedBox(),
            const MySizedBox(),
            const MySizedBox(),
          ],
        ),
      ),
    );
  }
}
