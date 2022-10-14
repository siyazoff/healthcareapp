// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  final doctorImagePath;
  final String doctorName;
  final String doctorExperience;
  final String doctorRating;

  DoctorInfo({
    required this.doctorImagePath,
    required this.doctorName,
    required this.doctorExperience,
    required this.doctorRating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //pic of a doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height: 46,
              ),
            ),
            // rating doctor
            SizedBox(
              height: 5,
            ),
            // d
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                  size: 16,
                ),
                Text(
                  doctorRating,
                  style: TextStyle(color: Colors.grey[800]),
                )
              ],
            ),
            SizedBox(
              height: 1,
            ),
            // doctor name
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),

            //doctor title
            Text(
              doctorExperience,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
