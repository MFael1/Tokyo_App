import 'package:flutter/material.dart';
import 'package:tokyo/component/phrases_section.dart';
import 'package:tokyo/model/model.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  static const contentColor = Colors.grey;
  final List<Number> phr = const [
    Number(
        sound: 'sounds/phrases/i_love_programming.wav',
        enName: 'プログラミングが大好きです',
        jpName: 'I love programming',
        contentColor: contentColor),
    Number(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        enName: 'ご気分はいかがですか？',
        jpName: 'How are you feeling?',
        contentColor: contentColor),
    Number(
        sound: 'sounds/phrases/what_is_your_name.wav',
        enName: 'あなたの名前は何ですか？',
        jpName: 'What is your name?',
        contentColor: contentColor),
    Number(
        sound: 'sounds/phrases/where_are_you_going.wav',
        enName: 'どこに行くの？',
        jpName: 'Where are you going?',
        contentColor: contentColor),
    Number(
        sound: 'sounds/phrases/yes_im_coming.wav',
        enName: 'はい、行きます',
        jpName: 'Yes I am coming',
        contentColor: contentColor),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color.fromARGB(255, 58, 55, 55),
      ),
      body: ListView.builder(
        itemCount: phr.length,
        itemBuilder: (context, index) {
          return Itemp(number: phr[index]);
        },
      ),
    );
  }
}
