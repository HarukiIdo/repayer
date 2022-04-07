import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DialogScreen extends HookConsumerWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop();
        return Future<bool>.value(false);
      },
      child: Scaffold(),
    );
  }
}
