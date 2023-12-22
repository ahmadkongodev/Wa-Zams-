
import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0, right:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Wa ZAMSE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Image.asset('assets/logo/profile.png'),
        ],
      ),
    );
  }
}
