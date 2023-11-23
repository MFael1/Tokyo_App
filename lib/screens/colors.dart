import 'package:flutter/material.dart';
import 'package:tokyo/component/item.dart';
import 'package:tokyo/model/model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  static const Color imgColor = Color.fromARGB(255, 123, 169, 190);
  static const Color conColor = Colors.lightBlue;
  final List<Number> col = const [
    Number(
        img: 'assets/images/colors/color_black.png',
        enName: 'Black',
        jpName: '黒',
        sound: 'sounds/colors/black.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/color_brown.png',
        enName: 'Brown',
        jpName: '茶色',
        sound: 'sounds/colors/brown.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'Dusty',
        jpName: 'ほこりっぽい',
        sound: 'sounds/colors/dusty yellow.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/color_gray.png',
        enName: 'Gray',
        jpName: 'グレー',
        sound: 'sounds/colors/gray.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/color_green.png',
        enName: 'Green',
        jpName: '緑',
        sound: 'sounds/colors/green.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/color_red.png',
        enName: 'Red',
        jpName: '赤',
        sound: 'sounds/colors/red.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/color_white.png',
        enName: 'White',
        jpName: '白',
        sound: 'sounds/colors/white.wav',
        imgColor: imgColor,
        contentColor: conColor),
    Number(
        img: 'assets/images/colors/yellow.png',
        enName: 'Yellow',
        jpName: '黄色',
        sound: 'sounds/colors/yellow.wav',
        imgColor: imgColor,
        contentColor: conColor),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color.fromARGB(255, 70, 67, 67),
      ),
      body: ListView.builder(
        itemCount: col.length,
        itemBuilder: (context, index) {
          return Item(number: col[index]);
        },
      ),
    );
  }
}
