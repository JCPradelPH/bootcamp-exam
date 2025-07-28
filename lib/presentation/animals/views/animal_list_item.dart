import 'package:clean_exe/presentation/animals/views/animal_list_item_icon_view.dart';
import 'package:flutter/material.dart';

class AnimalListItem extends StatelessWidget {
  const AnimalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Animal 1'),
      subtitle: const Text('Description of Animal 1'),
      leading: const AnimalListItemIconView(),
      onTap: () {
        
      },
    );
  }
}