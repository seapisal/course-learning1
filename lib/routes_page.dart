import 'package:courses_learning/views/course_marketing.dart';
import 'package:courses_learning/views/favorith_page.dart';
import 'package:courses_learning/views/home_page.dart';
import 'package:courses_learning/views/notifycation_page.dart';
import 'package:courses_learning/views/search_page.dart';
import 'package:flutter/material.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const NotifitcationPage(),
    const FavorithPage(),
    const SearchPage(),
    const CourseMarketing()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width * .200,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 3,
                offset: const Offset(0, 10))
          ]),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .034),
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                setState(() {
                  _selectedIndex = index;
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child:  SizedBox(
                width: MediaQuery.of(context).size.width * .25,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        listOficon[index],
                        size: MediaQuery.of(context).size.width * .077,
                        color: Colors.black26,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  List<IconData> listOficon = <IconData>[
    Icons.home_outlined,
    Icons.notifications_outlined,
    Icons.favorite_outline,
    Icons.search_outlined
  ];
}
