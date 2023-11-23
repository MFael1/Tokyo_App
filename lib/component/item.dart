import 'package:flutter/material.dart';
import 'package:tokyo/model/model.dart';
import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  Item({super.key, required this.number});
  final Number number;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: number.contentColor),
      height: 100,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(color: number.imgColor),
              child: Image.asset(number.img!)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName!,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  number.enName!,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(flex: 1),
          IconButton(
            onPressed: () {
              try {
                player.play(AssetSource(number.sound!));
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
