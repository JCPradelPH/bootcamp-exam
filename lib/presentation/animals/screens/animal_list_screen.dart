import 'package:clean_exe/presentation/animals/views/animal_list_view.dart';
import 'package:flutter/material.dart';

class AnimalListScreen extends StatefulWidget{
  const AnimalListScreen({super.key});

  @override
  State<AnimalListScreen> createState() => _AnimalListScreenState();
}

class _AnimalListScreenState extends State<AnimalListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal List'),
      ),
      body: AnimalListView(),
    );
  }
}