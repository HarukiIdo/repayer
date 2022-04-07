import 'package:repayer/screen/follow_request_screen.dart';
import 'package:repayer/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repayer/state/auth/auth_state.dart';

class SelectScreen extends HookConsumerWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('${_auth.currentUser!.displayName}さん'),
        actions: [
          IconButton(
            onPressed: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FollowRequestScreen(),
                ),
              );
            },
            icon: const Icon(Icons.person_add_alt_rounded),
          )
        ],
      ),
      drawer: SafeArea(
        child: SizedBox(
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
                      ref.read(authStateProvider.notifier).signOut();
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
                      ref.read(authStateProvider.notifier).deleteUser();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'お金を管理したい相手を選択',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
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
          ],
        ),
      ),
    );
  }
}
