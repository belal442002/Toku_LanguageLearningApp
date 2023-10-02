import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_list.dart';

import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
      image: 'assets/images/colors/color_black.png',
      jpText: 'Burakku',
      enText: 'Black',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      jpText: 'Chairo',
      enText: 'Brown',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpText: 'Hokori ppoi kiiro',
      enText: 'Dusty yellow',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      jpText: 'Gure',
      enText: 'Gray',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      jpText: 'Midori',
      enText: 'Green',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      jpText: 'Aka',
      enText: 'Red',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      jpText: 'Shiroi',
      enText: 'White',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) =>
            ItemList(item: colors[index], color: Colors.blue),
      ),
    );
  }
}
