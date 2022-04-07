import 'package:flutter/material.dart';
import 'package:repayer/main.dart';

class DialogContent extends StatelessWidget {
  const DialogContent({
    Key? key,
    required this.icon,
    required this.label,
    required this.description,
    required this.buttons,
  }) : super(key: key);

  final Widget? icon;
  final String? label;
  final String? description;
  final List<Widget> buttons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(children: [
            const SizedBox(height: 24),
            _buildIcon,
            _buildTitle(context),
            _buildDescription(context),
            _buildButtons(),
            const SizedBox(height: 24),
          ]),
        )
      ],
    );
  }

  Widget get _buildIcon => icon == null
      ? const SizedBox.shrink()
      : Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: icon,
        );

  Widget _buildTitle(BuildContext context) => label == null
      ? const SizedBox.shrink()
      : Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            label!,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        );

  Widget _buildDescription(BuildContext context) => description == null
      ? const SizedBox.shrink()
      : Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            description!,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
        );
  Widget _buildButtons() {
    final children = <Widget>[];
    for (var i = 0; i < buttons.length; i++) {
      children.add(buttons[i]);
      if (i != buttons.length - 1) {
        children.add(
          const SizedBox(height: 14),
        );
      }
    }
    return Column(children: children);
  }
}
