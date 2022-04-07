import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:repayer/state/follow/following_user_state.dart';

final sendEmailTextProvider = StateProvider<String>((ref) => '');

class AddCreditorScreen extends HookConsumerWidget {
  const AddCreditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextEditingController = useTextEditingController();
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
              onPressed: () async {
                final result = await ref
                    .read(followingUserStateProvider.notifier)
                    .requestFollow(email: email);

                if (result != null) {
                  if (result.result) {
                    print("OK");
                  }
                }
              },
              child: const Text('送信'),
            ),
          ],
        ),
      ),
    );
  }
}
