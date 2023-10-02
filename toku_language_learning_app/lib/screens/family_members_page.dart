import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_list.dart';

import '../models/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> members = const [
    Item(
      image: 'assets/images/family_members/family_father.png',
      jpText: 'Chichoya',
      enText: 'Father',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      jpText: 'Musum',
      enText: 'Daughter',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      jpText: 'Ojisan',
      enText: 'Grand Father',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      jpText: 'Hahaoya',
      enText: 'Mother',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      jpText: 'Sobo',
      enText: 'Grand Mother',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      jpText: 'Nisan',
      enText: 'Older brother',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      jpText: 'Ane',
      enText: 'Older sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Family Member'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) => ItemList(
          item: members[index],
          color: Colors.green,
        ),
      ),
    );
  }
}
