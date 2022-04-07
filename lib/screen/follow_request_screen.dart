import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:repayer/state/follow/following_user_state.dart';

final sendEmailTextProvider = StateProvider<String>((ref) => '');

class FollowRequestScreen extends HookConsumerWidget {
  const FollowRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextEditingController = useTextEditingController();
    final email = ref.watch(sendEmailTextProvider);
    final followUsers = ref.watch(followingUserStateProvider).value;

    if (followUsers == null) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('返したい人を追加'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
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
