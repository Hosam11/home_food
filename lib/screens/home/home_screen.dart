import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_food/routes.dart';

import 'home_widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF0E294E),
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF0E294E),
          onPressed: () => Navigator.pushNamed(context, billeteraScreen),
          child: const Icon(Icons.arrow_forward),
        ),
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
