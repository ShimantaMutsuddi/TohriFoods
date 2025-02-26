import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tohri_foods/features/home/widgets/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "আমাদের পরিষেবা",
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
              ProductCard(
                title: 'গবাদি পশু',
                imagePath: 'assets/images/cow.png',
                onTap: () => print('Cow tapped'),
              ),
              ProductCard(
                title: 'আম',
                imagePath: 'assets/images/fruits.png',
                onTap: () => print('Cow tapped'),
              ),
              ProductCard(
                title: 'মসলা',
                imagePath: 'assets/images/herbs.png',
                onTap: () => print('Cow tapped'),
              ),

            ],
          ),
        )
      ],
    );
  }
}