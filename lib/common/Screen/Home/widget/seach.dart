
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), // Rayon pour arrondir les coins
          border: Border.all(color: Colors.black), // Couleur et largeur de la bordure
        ),
        child: Row(
          children: [
            /// Search
            Expanded(
              child: TextFormField(
                //autofocus: true,
                decoration: const InputDecoration(border: InputBorder.none,prefixIcon: Icon(Iconsax.search_normal), hintText: 'Search'),
              ),
            ),
            const SizedBox(width: 14),
            /// Filtere
            IconButton(
              onPressed: (){},        
              icon: const Icon(Iconsax.category, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}