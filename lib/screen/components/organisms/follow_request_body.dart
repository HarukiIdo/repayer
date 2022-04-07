import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:repayer/data/datasource/user/followRequest/follow_request.dart';

class FollowRequstBody extends HookWidget {
  const FollowRequstBody();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(context),
        const SizedBox(height: 8),
        _buildEmailTitle(context),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) => Text(
        '返済したい相手のメールアドレスを入力しましょう',
        style: Theme.of(context).textTheme.headline1,
      );

  Widget _buildEmailTitle(BuildContext context) => Text(
        'メールアドレス',
        style: Theme.of(context).textTheme.bodyText2,
      );

  Widget _buildSendButton(BuildContext context,
      {required TextEditingController controller, required bool enabled}) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('送信'),
    );
  }
}
