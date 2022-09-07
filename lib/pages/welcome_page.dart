// ignore_for_file: prefer_interpolation_to_compose_strings, sized_box_for_whitespace

import 'package:cubit_practice/misc/colors.dart';
import 'package:cubit_practice/widgets/app_large_text.dart';
import 'package:cubit_practice/widgets/app_text.dart';
import 'package:cubit_practice/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    List images = [
      'welcome-one.png',
      'welcome-two.png',
      'welcome-three.png',
    ];

    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/"+images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain"),
                      const SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "Mountain hikes give you an incredible sense of freedom along with your endurance test",
                          size: 14,
                          color: AppColors.textColor2,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton(width: 120,),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}