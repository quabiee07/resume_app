import 'package:flutter/material.dart';
import 'package:hng_task_two/resources/color_manager.dart';
import 'package:hng_task_two/resources/font_manager.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  const ServiceCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              textAlign: TextAlign.start,
              style: getMediumStyle(
                  fontSize: FontSize.s16,
                  color: Colors.white,
                  letterSpacing: 0)),
        ],
      ),
    );
  }
}
