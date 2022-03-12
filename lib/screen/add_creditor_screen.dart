import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sendEmailTextProvider = StateProvider<String>((ref) => '');

class AddCreditorScreen extends HookConsumerWidget {
  const AddCreditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextEditingController = TextEditingController();
    final email = ref.watch(sendEmailTextProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('返済者の追加'),
        leading: SizedBox(
          width: 44,
          height: 44,
          child: GestureDetector(
            child: const Icon(
              Icons.chevron_left,
              size: 44,
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '返済したい相手のメールアドレスを入力しましょう',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'メールアドレス',
              ),
              onChanged: (String value) {
                ref.read(sendEmailTextProvider.notifier).state = value;
              },
              controller: emailTextEditingController,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: const Text('送信'),
            ),
          ],
        ),
      ),
    );
  }
}
