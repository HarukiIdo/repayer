import 'package:flutter/material.dart';

class RepaymentScreen extends StatelessWidget {
  const RepaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("返済"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: "返済額"),
            onChanged: (String value) {},
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "返済日"),
            onChanged: (String value) {},
          )
        ],
      ),
    );
  }
}
