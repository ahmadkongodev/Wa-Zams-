import 'package:flutter/material.dart';

class CategoriesChipsRow extends StatefulWidget {
  final List<String> categories;
  final int? selectedIndex;
  final ValueChanged<int>? onSelectionChanged;

  CategoriesChipsRow({
    required this.categories,
    required this.selectedIndex,
    required this.onSelectionChanged,
  });

  @override
  _CategoriesChipsRowState createState() => _CategoriesChipsRowState();
}

class _CategoriesChipsRowState extends State<CategoriesChipsRow> {
  int? _selectedIndex; // Utilisé pour la gestion interne de l'état

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex ?? 0; // Sélection par défaut "All" (index 0)
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.categories.asMap().entries.map((entry) {
          final int index = entry.key;
          final String category = entry.value;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChoiceChip(
              label: Text(category),
              selected: _selectedIndex == index,
              selectedColor: Colors.blue, // Couleur lorsque la puce est sélectionnée
              showCheckmark: false, // Ne pas afficher l'icône de validation
              onSelected: (bool selected) {
                setState(() {
                  _selectedIndex = selected ? index : null;
                });

                if (widget.onSelectionChanged != null) {
                  widget.onSelectionChanged!(selected ? index : -1);
                }
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
