import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NumbersPage()));
            },
            text: 'Numbers',
            color: const Color(0xFFEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FamilyMembers()),
              );
            },
            text: 'FamilyMembers',
            color: const Color(0xFF558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ColorsPage()),
              );
            },
            text: 'Colors',
            color: const Color(0xFF79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PhrasesPage()),
              );
            },
            text: 'phrases',
            color: const Color(0xFF50ADC7),
          ),
        ],
      ),
    );
  }
}
