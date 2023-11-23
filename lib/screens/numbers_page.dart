import 'package:flutter/material.dart';
import 'package:tokyo/component/item.dart';
import 'package:tokyo/model/model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  static const Color imgc = Color.fromARGB(255, 238, 197, 76);
  static const conc = Color.fromARGB(255, 186, 155, 62);

  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        img: 'assets/images/numbers/number_one.png',
        enName: 'One',
        jpName: '1つ',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        img: 'assets/images/numbers/number_two.png',
        enName: 'Two',
        jpName: '二',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        img: 'assets/images/numbers/number_three.png',
        enName: 'Three',
        jpName: '三つ',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        img: 'assets/images/numbers/number_four.png',
        enName: 'Four',
        jpName: '四',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        img: 'assets/images/numbers/number_five.png',
        enName: 'Five',
        jpName: '五',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        img: 'assets/images/numbers/number_six.png',
        enName: 'Six',
        jpName: '六',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        img: 'assets/images/numbers/number_seven.png',
        enName: 'Seven',
        jpName: 'セブン',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        img: 'assets/images/numbers/number_eight.png',
        enName: 'Eight',
        jpName: '八',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        img: 'assets/images/numbers/number_nine.png',
        enName: 'Nine',
        jpName: '九',
        imgColor: imgc,
        contentColor: conc),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        img: 'assets/images/numbers/number_ten.png',
        enName: 'Ten',
        jpName: '十',
        imgColor: imgc,
        contentColor: conc),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(number: numbers[index]);
        },
      ),
    );
  }

  List<Item> getList(List<Number> temp) {
    List<Item> temp1 = [];
    for (int i = 0; i < temp.length; ++i) {
      temp1.add(Item(number: temp[i]));
    }
    return temp1;
  }
}
