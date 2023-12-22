import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wazamse/common/Screen/Home/widget/home_menu.dart';

class startButton extends StatelessWidget {
  const startButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ElevatedButton(
        onPressed:() => Get.to(() => const HomeMenu()), 
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.blue, ),
        child: const Icon(Iconsax.arrow_right_3, color: Colors.white, size: 30, ),
        ),
    );
  }
}