import 'package:flutter/material.dart';
class ProcessSection extends StatelessWidget {
  const ProcessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("জবাইয়ের তারিখঃ",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFF2E5116),
        ),),
        SizedBox(height: 10,),
        Text("১৪ নভেঃ ২০২৪ ",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFF152C07),
        ),)
      ],
    );
  }
}