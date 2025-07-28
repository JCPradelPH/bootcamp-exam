import 'package:clean_exe/core/dependency_injection/injection_container.dart';
import 'package:clean_exe/presentation/animals/screens/animal_list_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final IconData donutIcon = Icons.donut_large;
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimalListScreen();
  }
}
