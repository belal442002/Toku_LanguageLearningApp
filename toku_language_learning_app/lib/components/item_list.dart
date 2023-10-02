//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key, required this.item, required this.color})
      : super(key: key);
  final Item item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpText,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  item.enText,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                // AudioPlayer player = AudioPlayer();
                // player.play(AssetSource(
                //     'assets/sounds/numbers/number_eight_sound.wav'));
                // AudioCache audioCache =
                //     AudioCache(prefix: 'assets/sounds/numbers');
                // audioCache.load('number_eight_sound.wav');
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesList extends StatelessWidget {
  const PhrasesList({super.key, required this.item, required this.color});
  final Item item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  item.enText,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                // AudioPlayer player = AudioPlayer();
                // player.play(AssetSource(
                //     'assets/sounds/numbers/number_eight_sound.wav'));
                // AudioCache audioCache =
                //     AudioCache(prefix: 'assets/sounds/numbers');
                // audioCache.load('number_eight_sound.wav');
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
