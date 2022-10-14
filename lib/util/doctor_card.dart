// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DoctorCard extends StatelessWidget {
  final iconImagePath;
  final String doctorCategoryName;

  // ignore: prefer_const_constructors_in_immutables
  DoctorCard({
    required this.iconImagePath,
    required this.doctorCategoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey,
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              doctorCategoryName,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
