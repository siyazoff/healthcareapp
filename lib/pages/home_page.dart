// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../util/emoticon_face.dart';
import '../util/exercise_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          //Greetings row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //Hi Darkhan
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Hi, Darkhan!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '13 Oct, 2022',
                          style: TextStyle(
                            color: Colors.blue[100],
                          ),
                        ),
                      ],
                    ),

                    //Notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                // Search Bar
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                //how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                // 4 different faces
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        EmoticonFace(emoticonFace: '😔'),
                        SizedBox(height: 8),
                        Text(
                          'Bad',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    //fine
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '😊'),
                        SizedBox(height: 8),
                        Text(
                          'Fine',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    //well
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '😁'),
                        SizedBox(height: 8),
                        Text(
                          'Well',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    //excellent
                    Column(
                      children: const [
                        EmoticonFace(emoticonFace: '😃'),
                        SizedBox(height: 8),
                        Text(
                          'Excellent',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                25,
                25,
                25,
                2,
              ),
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    // Exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //ListView of exercises
                    Expanded(
                      child: ListView(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 7,
                            color: Colors.pink,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: 2,
                            color: Colors.indigoAccent,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 15,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
