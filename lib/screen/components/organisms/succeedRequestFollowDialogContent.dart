import 'package:flutter/material.dart';
import 'package:repayer/screen/components/molecules/dialog_button.dart';
import 'package:repayer/screen/components/molecules/dialog_content.dart';

class SucceedRequestFollowDialogContent extends StatelessWidget {
  const SucceedRequestFollowDialogContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DialogContent(
      icon: _succeedIcon,
      label: 'フォロー申請を送りました',
      description: 'フォローの承認をお待ちください\n承認後、フォロワーに返済することができます',
      buttons: [
        DialogButton(
          label: '返済者一覧へ',
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  Widget get _succeedIcon => Container(
        child: const Center(
            child: Icon(
          Icons.check,
        )),
      );
}
