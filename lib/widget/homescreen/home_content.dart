import 'package:flutter/material.dart';
import 'package:wildsense_ai/widget/homescreen/welcome_screen_container.dart';

import '../indicator/carousel_indicator.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const WelcomeScreenContent(),
          const Text(
            'FEATURED CONTENT',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              fontFamily: "SF Pro",
              color: Colors.black,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 25, right: 25, bottom: 12),
            child: Column(
              children: [
                CarouselWithIndicator(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'SPECIES NEARBY',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: "SF Pro",
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
