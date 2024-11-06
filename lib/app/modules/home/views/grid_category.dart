import 'package:flutter/material.dart';

class GridCategory extends StatelessWidget {
  GridCategory({super.key});

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
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemCount: menu.length,
      itemBuilder: (context, index) {
        return Expanded(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(30),
                  color: menu[index]['color'],
                ),
                child: Icon(
                  menu[index]['icon'],
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(menu[index]['title']),
              Text(menu[index]['subtitle']),
            ],
          ),
        );
      },
    );
  }
}
