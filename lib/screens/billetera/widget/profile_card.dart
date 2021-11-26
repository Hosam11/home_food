import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/images.dart';
import 'package:home_food/constants/svgs.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

const flags = [orangeFlag, pinkFlag, blueFlag, purpleFlag];
const flagValues = ['15.000', '10.000', '50.00', '1.000'];

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(profilePic),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Diana Pino',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('diana.pino@gmail.com'),
                  ],
                ),
                Spacer(),
                SvgPicture.asset(
                  qr,
                  width: 50,
                  height: 50,
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Your profile: 40% complete'),
                Spacer(),
                SvgPicture.asset(pinkFlag),
              ],
            ),
            SizedBox(height: 8),
            // LinearPercentIndicato
            LinearPercentIndicator(
              // width: 100.0,
              lineHeight: 8.0,
              padding: EdgeInsets.zero,
              percent: .4,
              animation: true,
              backgroundColor: Colors.grey[300],
              progressColor: Colors.green[400],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(orangeFlag),
                      Text(
                        flagValues[0],
                        style: TextStyle(color: Color(0xff022136)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(pinkFlag),
                      Text(
                        flagValues[1],
                        style: TextStyle(color: Color(0xff022136)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(blueFlag),
                      Text(
                        flagValues[2],
                        style: TextStyle(color: Color(0xff022136)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(purpleFlag),
                      Text(
                        flagValues[3],
                        style: TextStyle(color: Color(0xff022136)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xff778BCC29),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Center(
                child: Text(
                  'Complete your profile to get a bonus',
                  style: TextStyle(color: Color(0xffF5835F)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
