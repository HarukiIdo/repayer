import 'package:flutter/material.dart';

class LanunchBody extends StatelessWidget {
  const LanunchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.brown),
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 2),
          child: const Text('Repayer'),
        ),
        const SizedBox(height: 8),
        const Icon(Icons.house),
      ],
    );
  }
}
