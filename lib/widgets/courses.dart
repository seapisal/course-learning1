
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
   Courses({super.key ,required this.imagesUrl});

   String imagesUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 7,

            color: Colors.grey.shade400,
            offset: const Offset(5, 7)
          )
        ],
        image: DecorationImage(
          image: AssetImage(imagesUrl),fit: BoxFit.cover
        )
      ),
    );
  }
}

