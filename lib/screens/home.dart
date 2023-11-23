import 'package:flutter/material.dart';
import 'package:tokyo/component/option.dart';
import 'package:tokyo/screens/colors.dart';
import 'package:tokyo/screens/family.dart';
import 'package:tokyo/screens/numbers_page.dart';
import 'package:tokyo/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 113, 148),
      appBar: AppBar(
        title: const Text("Tokyo"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              bottom: 35,
            ),
            child: Icon(
              Icons.school_rounded,
              size: 290,
              color: Colors.white,
            ),
          ),
          Option(
            name: 'Numbers',
            nav: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Option(
            name: 'Family members',
            nav: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return (const FamilyMembers());
                  },
                ),
              );
            },
          ),
          Option(
            name: 'Colors',
            nav: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Option(
            name: 'Phrases',
            nav: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Phrases();
                  },
                ),
              );
            },
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              alignment: Alignment.center,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright,
                    color: Colors.white,
                  ),
                  Text(
                    'FAEL',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
