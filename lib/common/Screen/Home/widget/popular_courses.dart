
import 'package:flutter/material.dart';

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
          onPressed: () {
            // Action to perform when "VOIR TOUT" button is clicked
          },
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
