import 'package:courses_learning/widgets/courses.dart';
import 'package:flutter/material.dart';

import 'course_marketing.dart';
import 'menu_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFE),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Hello, ',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              'James! ',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MenuProfile()));
                          },
                          icon: const Icon(
                            Icons.menu_outlined,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Find a course you want to learn ',
                      style: TextStyle(fontSize: 21, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Text(
                          'Categories',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CourseMarketing()),);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Color(0xFFA2BDE8),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Text(
                          'See All',
                          style: TextStyle(fontSize: 17,color: Color(0xFFF9FAFE)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Courses(assetsImage: 'assets/images/2A.png')
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Courses(imagesUrl: 'assets/images/2A.png',),
                    Courses(imagesUrl: 'assets/images/2B.png',),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13,right: 13,top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Courses(imagesUrl: 'assets/images/2C.png',),
                    Courses(imagesUrl: 'assets/images/2D.png',),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
