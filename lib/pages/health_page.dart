// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:mentalhealthapp/util/doctor_info.dart';

import '../util/doctor_card.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({Key? key}) : super(key: key);
  @override
  build(BuildContext context) {
    return SafeArea(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //Greeting headline
                    Text('Hello,',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Darkhan',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    LineIcons.userAlt,
                    size: 35,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Card - "How do you feel?"
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.deepPurple[100],
              ),
              child: Row(
                children: [
                  //animation or cute picture
                  Container(
                      height: 100,
                      width: 100,
                      child: Lottie.asset('assets/doctorHeadlineGif.json')),
                  SizedBox(
                    width: 10,
                  ),

                  //how do you feel + get started button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Fill out your medical card right now',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue[200]),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Search bar (How can we help you?)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[200],
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(LineIcons.search),
                  border: InputBorder.none,
                  hintText: 'How can we help you?',
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //horizontal ListView -> Doctors
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  iconImagePath: 'lib/icons/tooth.png',
                  doctorCategoryName: 'Dentist',
                ),
                DoctorCard(
                  iconImagePath: 'lib/icons/surgeon.png',
                  doctorCategoryName: 'Surgeon',
                ),
                DoctorCard(
                  iconImagePath: 'lib/icons/pharmacist.png',
                  doctorCategoryName: 'Pharmacist',
                )
              ],
            ),
          ),

          SizedBox(height: 25),
          //Doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Doctor list',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DoctorInfo(
                doctorImagePath: 'lib/images/surgeon.jpeg',
                doctorName: 'Dr Zia Arain',
                doctorExperience: 'Surgeon 26 y.e.',
                doctorRating: '4.9',
              ),
              DoctorInfo(
                doctorImagePath: 'lib/images/dentist.jpeg',
                doctorName: 'Dr Imran Khan',
                doctorExperience: 'Dentist 8 y.e.',
                doctorRating: '4.8',
              ),
              DoctorInfo(
                doctorImagePath: 'lib/images/pharmacist.png',
                doctorName: 'Dr Lu Filomena ',
                doctorExperience: 'Pharmacist 12 y.e.',
                doctorRating: '5',
              ),
              DoctorInfo(
                doctorImagePath: 'lib/images/psychologist.png',
                doctorName: 'Dr Ric Benedicte ',
                doctorExperience: 'Psychologist 3 y.e.',
                doctorRating: '4.3',
              ),
            ],
          ))
        ],
      ),
    );
  }
}
