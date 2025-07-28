import 'package:clean_exe/presentation/animals/views/animal_list_item.dart';
import 'package:flutter/material.dart';

class AnimalListView extends StatefulWidget{
  const AnimalListView({super.key});

  @override
  State<AnimalListView> createState() => _AnimalListViewState();
}

class _AnimalListViewState extends State<AnimalListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AnimalListItem(),
        AnimalListItem(),
      ],
    );
  }
}