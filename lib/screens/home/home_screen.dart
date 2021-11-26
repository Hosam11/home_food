import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/svgs.dart';
import 'package:home_food/routes.dart';
import 'package:home_food/screens/billetera/widget/win_dialog.dart';
import 'package:home_food/screens/billetera/widget/win_header.dart';
import 'package:home_food/screens/home/widgets/discount_card.dart';
import 'package:home_food/screens/home/widgets/header_widget.dart';

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
        floatingActionButton: FloatingActionButton(onPressed: () {
          showDialog(context: context, builder: (_) => dialog);
        }),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      color: const Color(0xFF0E294E),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          top: 25,
                          bottom: 100,
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 25.0, bottom: 16),
                              child: HeaderWidget(),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // hello
                                    Text(
                                      'Hello, Diana',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 30),
                                    Container(
                                      width: 100,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color(0xFFFDA124),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'Earn points with your purchases',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    const SizedBox(height: 60),
                                    Wrap(
                                      children: const [
                                        Text(
                                          '• Of the day',
                                          style: TextStyle(
                                            color: Color(0xFFFDA020),
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Text(
                                          'Meals',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Text(
                                          'Breakfasts',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                // 2 imgs
                                Expanded(
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        pinkLeafSvg,
                                        width: 100,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, secondScreen);
                                        },
                                        child: SvgPicture.asset(
                                          greenLeafSvg,
                                          width: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    /*Positioned(
                      bottom: 5,
                      child: Row(
                        children: [
                          DiscountCard(),
                          Column(
                            children: [
                              Column(),
                              Column(),
                            ],
                          )
                        ],
                      ),
                      // child: Text('sd'),
                    )*/
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
