import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  final String title;
  final String desc;

  const DescriptionSection({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF06161C),
        ),),
        SizedBox(height: 10,),
        Text(desc,style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xFF355F15),
        ),)
      ],
    );
  }
}
