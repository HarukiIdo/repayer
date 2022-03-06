import 'package:repayer/screen/add_creditor_screen.dart';
import 'package:repayer/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sendEmailTextProvider = StateProvider<String>((ref) => '');

class SelectionScreen extends HookConsumerWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _auth = FirebaseAuth.instance;
    final email = ref.watch(sendEmailTextProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("返済する相手を選択"),
        actions: [
          IconButton(
            onPressed: () async {
              await _auth.signOut();
              await Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(children: []),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddCreditorScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
