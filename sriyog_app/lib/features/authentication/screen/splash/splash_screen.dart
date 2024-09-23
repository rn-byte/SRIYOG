import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sriyog_app/features/authentication/screen/splash/second_splash.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import 'widgets/arrow_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondSplashScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: isDark ? Colors.black : Colors.white,
          child: Center(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // const SizedBox(),
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                      Text(
                        'Sriyog',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Connecting Work with Worker !',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // SizedBox(height: MediaQuery.of(context).size.height * 0.5),
                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage(SpImage.rocket),
                        height: 40,
                        width: 40,
                        color: isDark ? SpColor.grey : SpColor.darkerGrey,
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 1,
                        height: 30,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Powered By',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            'Microsoft for Startups',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    child: CustomPaint(
                      size: const Size(250, 25),
                      painter: ArrowLinePainter(arrowColor: isDark ? SpColor.white : SpColor.black),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  const Text(
                    'Proudly Made in The cloud',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w100),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
