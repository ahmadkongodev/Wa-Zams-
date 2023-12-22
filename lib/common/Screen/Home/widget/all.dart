import 'package:flutter/material.dart';
import 'package:wazamse/common/Screen/Home/widget/categori.dart';
import 'package:wazamse/common/Screen/Home/widget/video_container_horizontal.dart';


class AllScreen extends StatefulWidget {
  const AllScreen({Key? key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  int? selectedIndex;

  final List<String> courseList = ['Tout', 'Perlage', 'Recyclage', 'Amballage', 'Tricotage'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Courses'),
        actions: [
          IconButton(
            onPressed: () {
              // Action à effectuer lors du clic sur l'icône de recherche
              // Peut-être ouvrir une boîte de dialogue de recherche ou naviguer vers une page de recherche
            },
            icon: const Icon(Icons.search), // Icône de recherche
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesChipsRow(
              categories: courseList,
              selectedIndex: selectedIndex,
              onSelectionChanged: (int index) {
                setState(() {
                  selectedIndex = index;
                });
                // Logique à ajouter basée sur l'index sélectionné ici
              },
            ),
            SizedBox(height: 10), // Espacement entre les catégories et les éléments VideoInfoContainer
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6, // Nombre de VideoInfoContainer à afficher
              itemBuilder: (context, index) {
                return VideoInfoContainerH(); // Utilisation du widget VideoInfoContainer ici
              },
            ),
          ],
        ),
      ),
    );
  }
}
