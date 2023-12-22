import 'package:flutter/material.dart';
import 'package:wazamse/common/Screen/Home/widget/banner.dart';
import 'package:wazamse/common/Screen/Home/widget/categori.dart';
import 'package:wazamse/common/Screen/Home/widget/home_bar.dart';
import 'package:wazamse/common/Screen/Home/widget/popular_courses.dart';
import 'package:wazamse/common/Screen/Home/widget/seach.dart';
import 'package:wazamse/common/Screen/Home/widget/viedo_container.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex; // Changed int selectedIndex; to int? selectedIndex;

  final List<String> courseList = ['Tout', 'Perlage', 'Recyclage', 'Amballage', 'Tricotage'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeBar(),
              const SizedBox(height: 10),
              const Search(), // Assuming Search is a widget
              const SizedBox(height: 10),
              const BannerScreen(), // Assuming BannerScreen is a widget
              const PopularCourses(),
              const SizedBox(height: 5),
              CategoriesChipsRow(
                categories: courseList,
                selectedIndex: selectedIndex,
                onSelectionChanged: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                  // Add your logic based on the selected index here
                },
              ),
          
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // You can change this to the number of VideoInfoContainer you want
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: VideoInfoContainer(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
