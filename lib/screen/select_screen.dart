import 'package:flutter/widgets.dart';
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddCreditorScreen(),
                ),
              );
            },
            icon: const Icon(Icons.person_add_alt_rounded),
          )
        ],
      ),
      drawer: SafeArea(
        child: Container(
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Drawer(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 60,
                    child: DrawerHeader(
                      child: Text(
                        '設定',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'ログアウト',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.logout),
                    onTap: () async {
                      await _auth.signOut();
                      await Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'アカウント削除',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.close),
                    onTap: () async {
                      await _auth.signOut();
                      await Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: const [
            Text('山田さん'),
            SizedBox(
              height: 8,
            ),
            Text('田中さん'),
            SizedBox(
              height: 8,
            ),
            Text('吉田さん'),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
