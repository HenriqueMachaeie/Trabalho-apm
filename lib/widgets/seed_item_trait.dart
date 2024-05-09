import 'package:flutter/material.dart';

class SeedItemTrait extends StatelessWidget{
  const SeedItemTrait({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(children: [
      Icon(
          icon,
        size: 17,
        color: Colors.white,
      ),
      const SizedBox(width: 6),
      Text(
        label,
        style: const TextStyle(color: Colors.white),),
    ],);
  }


}