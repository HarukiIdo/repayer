import 'package:flutter/material.dart';
import 'package:repayer/screen/components/molecules/dialog_button.dart';
import 'package:repayer/screen/components/molecules/dialog_content.dart';

class FailedRequestedFollowDialogContent extends StatelessWidget {
  const FailedRequestedFollowDialogContent({
    Key? key,
    required this.onTapEdit,
    required this.description,
  }) : super(key: key);

  final VoidCallback onTapEdit;
  final String description;
  @override
  Widget build(BuildContext context) {
    return DialogContent(
      icon: _bulldIcon,
      label: 'ご利用いただけない\nメールアドレスです',
      description: description,
      buttons: [
        DialogButton(
          label: '修正',
          onTap: () {
            onTapEdit();
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  Widget get _bulldIcon => Container(
        child: const Center(
            child: Icon(
          Icons.close,
          color: Colors.white,
          size: 25,
        )),
      );
}
