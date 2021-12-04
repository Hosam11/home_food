import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/z_shared_screen_widgets.dart';

class SharedScreen extends StatelessWidget {
  const SharedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              RocketDialog(),
            ],
          ),
        ),
      ),
    );
  }
}
