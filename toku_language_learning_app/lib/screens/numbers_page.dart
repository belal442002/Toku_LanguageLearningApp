import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_list.dart';
import 'package:language_learning_app/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
      image: 'assets/images/numbers/number_one.png',
      jpText: 'Ichi',
      enText: 'One',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      jpText: 'Ni',
      enText: 'Two',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      jpText: 'San',
      enText: 'Three',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      jpText: 'Shi',
      enText: 'Four',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      jpText: 'Go',
      enText: 'Five',
    ),
    Item(
      image: 'assets/images/numbers/number_six.png',
      jpText: 'Roku',
      enText: 'Six',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      jpText: 'ShiChi',
      enText: 'Seven',
    ),
    Item(
      image: 'assets/images/numbers/number_eight.png',
      jpText: 'Hachi',
      enText: 'Eight',
    ),
    Item(
      image: 'assets/images/numbers/number_nine.png',
      jpText: 'Kyuu',
      enText: 'Nine',
    ),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      jpText: 'Juu',
      enText: 'Ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => ItemList(
          item: numbers[index],
          color: const Color(0xffEF9235),
        ),
      ),
    );
  }
}

List<ItemList> getNumbersList(List<Item> items) {
  List<ItemList> itemList = [];
  for (var i = 0; i < items.length; i++) {
    itemList.add(ItemList(
      item: items[i],
      color: const Color(0xFF46322B),
    ));
  }
  return itemList;
}
