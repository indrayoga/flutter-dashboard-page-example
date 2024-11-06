import 'package:flutter/material.dart';

class Category {
  Category(
      {required this.icon,
      required this.color,
      required this.title,
      required this.subtitle});

  IconData icon;
  MaterialColor color;
  String title;
  String subtitle;

  List generate() {
    return [
      Category(
          icon: Icons.favorite,
          color: Colors.orange,
          title: 'Speaking Skill',
          subtitle: '16'),
      Category(
          icon: Icons.person,
          color: Colors.green,
          title: 'Reading Skill',
          subtitle: '16'),
      Category(
          icon: Icons.star,
          color: Colors.red,
          title: 'Writing Skill',
          subtitle: '16'),
    ];
  }
}
