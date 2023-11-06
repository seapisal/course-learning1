import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFFF9FAFE),
        title: const Text('Profile',style: TextStyle(color: Colors.black87),),
      ),

    );
  }
}
