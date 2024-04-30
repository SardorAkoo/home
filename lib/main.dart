// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hi, John Smith👋'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/bell.png'),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/man.png'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Discover How\nTo Be Creative',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/rocket.png',
                        width: 90,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        'Instructor',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInstructorCard(
                    imageAsset: 'assets/leyle.webp',
                    name: 'Leyla',
                  ),
                  _buildInstructorCard(
                    imageAsset: 'assets/mila.jpg',
                    name: 'Milla',
                  ),
                  _buildInstructorCard(
                    imageAsset: 'assets/tatyana.png',
                    name: 'Tatyana',
                  ),
                  _buildInstructorCard(
                    imageAsset: 'assets/John.png',
                    name: 'John',
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Coursus',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Row(
                children: [
                  Text(
                    'All',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Desugin',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Programing',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Gaming',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                height: 5,
                width: 200,
                color: Color.fromARGB(0, 37, 35, 35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  imageAsset(
                    'assets/chiqiz.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructorCard({
    required String imageAsset,
    required String name,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imageAsset),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  get imageAsset {}
}
