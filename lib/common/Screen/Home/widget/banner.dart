import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class BannerScreen extends StatefulWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            pauseAutoPlayOnTouch: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: [
            'assets/banner/banner2.png', 
            //'assets/banner/3.png', 
          ].map((imagePath) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0), 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), 
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 2; i++) 
              Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == i ? Colors.blue : Colors.grey, 
                ),
              ),
          ],
        ),
      ],
    );
  }
}
