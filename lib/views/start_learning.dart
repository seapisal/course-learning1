import 'package:courses_learning/routes_page.dart';
import 'package:flutter/material.dart';


class StartLearning extends StatelessWidget {
  const StartLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFE),
      body: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 30, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COURSES',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'Learn ',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'anywhere ',
                          style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'and',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'anytime ',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 499,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.png'),
                        fit: BoxFit.contain,
                      ))),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const RoutesPage()));
                },
                child: Container(
                  height: 57,
                  width: 230,
                  decoration: BoxDecoration(
                      color: const Color(0xFFA2BDE8),
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('START LEARNING',style: TextStyle(color: Color(0xFFF9FAFE),fontSize: 14,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.play_arrow,color: Color(0xFFF9FAFE),size: 18,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
