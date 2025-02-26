import 'package:flutter/material.dart';
import 'package:tohri_foods/features/home/widgets/video_card.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ভিডিও",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF06161C),
          ),
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: size.height * .15,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              VideoCard(
                imagePath: 'assets/images/video1.png',
                onTap: () => print('Cow tapped'),
              ),

              VideoCard(
                imagePath: 'assets/images/video2.png',
                onTap: () => print('Cow tapped'),
              ),
              VideoCard(
                imagePath: 'assets/images/video1.png',
                onTap: () => print('Cow tapped'),
              ),


            ],
          ),
        )
      ],
    );
  }
}