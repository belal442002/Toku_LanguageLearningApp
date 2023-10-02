// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_list.dart';

import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
      jpText: 'Kodoku suru koto u wasurenaide kudasai',
      enText: 'Dont forget to subscribe',
    ),
    Item(
      jpText: 'Watashi puroguramingu daisukaidesu',
      enText: 'I love programming',
    ),
    Item(
      jpText: 'Puroguramingu wa kantandesu',
      enText: 'Programming is easy',
    ),
    Item(
      jpText: 'Doku ni iku no',
      enText: 'where are you going',
    ),
    Item(
      jpText: 'Namae wa nandesu ka',
      enText: 'What is your name?',
    ),
    Item(
      jpText: 'Watashi wa anime ga daisukidesu',
      enText: 'I love anime',
    ),
    Item(
      jpText: 'Go kibun wa ikagadesu ka',
      enText: 'How are you feeling',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) =>
            PhrasesList(item: phrases[index], color: Colors.lightBlue),
      ),
    );
  }
}
