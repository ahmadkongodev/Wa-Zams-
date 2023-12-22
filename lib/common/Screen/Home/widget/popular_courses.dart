
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wazamse/common/Screen/Home/widget/all.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Popular Courses',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: () => Get.to(()=> const AllScreen()),
          child: const Text(
            'VOIR TOUT >',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
