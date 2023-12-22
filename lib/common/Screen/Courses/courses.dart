import 'package:flutter/material.dart';
import 'package:wazamse/common/Screen/Courses/widget/completed.dart';
import 'package:wazamse/common/Screen/Courses/widget/en_cour.dart';
import 'package:wazamse/common/Screen/Home/widget/seach.dart';


class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Courses",
          style: TextStyle(
            color: Colors.black),),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            
            height: MediaQuery.of(context).size.height,
            child: Column(
              
              children: [
                SizedBox(height: 20),
                Search(),// bar de recherche

                SizedBox(height: 20),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      ),
                  child: Column(
  children: [
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: Colors.blue,
        indicatorColor: Colors.blue,
        //indicatorWeight: 2,
        indicator: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        controller: tabController,
        tabs: const [
          Tab(
            text: 'Complete',
          ),
          Tab(
            text: 'En cours',
          ),
        ],
      ),
    ),
  ],
),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Completed(),
                      Encour()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}