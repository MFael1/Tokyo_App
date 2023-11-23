import 'package:flutter/material.dart';
import 'package:tokyo/component/item.dart';
import 'package:tokyo/model/model.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  static const Color imgc = Colors.greenAccent;
  static const conc = Colors.green;
  final List<Number> members = const [
    Number(
        img: 'assets/images/family_members/family_grandfather.png',
        enName: 'Grandfather',
        jpName: '祖父',
        sound: 'sounds/family_members/grand father.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_grandmother.png',
        enName: 'Grandmother',
        jpName: '祖母',
        sound: 'sounds/family_members/grand mother.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_father.png',
        enName: 'Father',
        jpName: '父親',
        sound: 'sounds/family_members/father.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_mother.png',
        enName: 'Mother',
        jpName: '母親',
        sound: 'sounds/family_members/mother.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_older_sister.png',
        enName: 'Sister',
        jpName: '妹',
        sound: 'sounds/family_members/older sister.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_older_brother.png',
        enName: 'Brother',
        jpName: '兄弟',
        sound: 'sounds/family_members/older bother.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_son.png',
        enName: 'Son',
        jpName: '息子',
        sound: 'sounds/family_members/son.wav',
        imgColor: imgc,
        contentColor: conc),
    Number(
        img: 'assets/images/family_members/family_daughter.png',
        enName: 'Daughter',
        jpName: '娘',
        sound: 'sounds/family_members/daughter.wav',
        imgColor: imgc,
        contentColor: conc),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family members'),
        backgroundColor: const Color.fromARGB(255, 70, 67, 67),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return Item(number: members[index]);
        },
      ),
    );
  }
}
