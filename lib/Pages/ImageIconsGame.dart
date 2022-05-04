import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'HomePage.dart';
import 'icon_card.dart';

class ImageAndIconsGame extends StatelessWidget {
  const ImageAndIconsGame({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("lib/assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icono: Icons.accessibility_rounded, color: Colors.blue),
                    IconCard(icono: Icons.medical_services, color: Colors.red),
                    IconCard(icono: Icons.account_circle_sharp, color: Colors.green),
                    IconCard(icono: Icons.whatshot_rounded, color: Colors.orange),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: Colors.deepPurpleAccent.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage("lib/assets/images/game.jpeg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
