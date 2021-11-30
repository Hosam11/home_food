import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:home_food/screens/billetera/widget/win_dialog.dart';
import 'package:home_food/screens/billetera/widget/win_header.dart';
import 'home_widgets/widgets.dart';

final dialog = SingleChildScrollView(
  child: Column(
    children: [
      const SizedBox(height: 100),
      Stack(
        clipBehavior: Clip.none,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: WinDialog(),
          ),
          // Positioned(top: -50, child: WinHeader()),
          Positioned.fill(
            top: -50,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: WinHeader(),
            ),
          ),
        ],
      ),

      // WinHeader(),
    ],
  ),
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF0E294E),
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    const FirstPart(),
                    Container(
                      margin: const EdgeInsets.only(top: 340),
                      child: const SecondPart(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
