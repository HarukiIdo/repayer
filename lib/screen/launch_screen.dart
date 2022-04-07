import 'package:flutter/material.dart';
import 'package:repayer/screen/components/organisms/launch_body.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: LanunchBody(),
      )),
    );
  }
}
