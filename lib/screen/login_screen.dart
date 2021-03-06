import 'package:repayer/screen/select_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final infoTextProvider = StateProvider<String>((ref) => '');
final emailProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextEditingController = useTextEditingController();
    final passwordTextEditingController = useTextEditingController();
    final infoText = ref.watch(infoTextProvider);
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'メールアドレス'),
                onChanged: (String value) {
                  ref.read(emailProvider.notifier).state = value;
                },
                focusNode: useFocusNode(),
                controller: emailTextEditingController,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'パスワード'),
                obscureText: true,
                onChanged: (String value) {
                  ref.read(passwordProvider.notifier).state = value;
                },
                controller: passwordTextEditingController,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      await auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      print('登録成功！');
                      await Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: ((context) => const SelectionScreen()),
                        ),
                      );
                    } catch (e) {
                      ref.read(infoTextProvider.notifier).state =
                          '登録失敗${e.toString()}}';
                      print(infoText);
                    }
                  },
                  child: const Text(
                    '新規登録',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      await auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      print('ログイン成功！');
                      await Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: ((context) => SelectionScreen()),
                        ),
                      );
                    } catch (e) {
                      ref.read(infoTextProvider.notifier).state =
                          'ログイン失敗${e.toString()}}';
                      print(infoText);
                    }
                  },
                  child: const Text(
                    'ログイン',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
