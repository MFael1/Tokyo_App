import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Option extends StatelessWidget {
  Option({super.key, this.name, this.nav});
  String? name;
  VoidCallback? nav;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nav,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        alignment: Alignment.center,
        height: 65,
        width: double.infinity,
        child: Text(
          name!,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
