import 'package:flutter/material.dart';
import 'package:getx_app/app/modules/home/views/exercise_tile.dart';

class ListCategory extends StatelessWidget {
  ListCategory({super.key});

  final List<Map<String, dynamic>> menu = [
    {
      'icon': Icons.favorite,
      'title': 'Speaking Skill',
      'subtitle': '16',
      'color': Colors.orange
    },
    {
      'icon': Icons.person,
      'title': 'Reading Skill',
      'subtitle': '16',
      'color': Colors.green
    },
    {
      'icon': Icons.star,
      'title': 'Writing Skill',
      'subtitle': '16',
      'color': Colors.red
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menu.length,
      itemBuilder: (context, index) {
        return ExerciseTile(
          icon: menu[index]['icon'],
          color: menu[index]['color'],
          exerciseName: menu[index]['title'],
          exerciseNumber: menu[index]['subtitle'],
        );
      },
    );
  }
}
