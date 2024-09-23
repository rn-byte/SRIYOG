import 'package:flutter/material.dart';
import 'package:sriyog_app/features/authentication/screen/splash/widgets/arrow_widget.dart';
import 'package:sriyog_app/utils/constants/colors.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              CircleAvatar(
                foregroundImage: const AssetImage(SpImage.user1),
                backgroundColor: Colors.grey[500],
                radius: 50,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.19),
              Text(
                'Verified Professional Marketplace',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                '100K+ Downloads',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'ENTER',
                      ))),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(SpImage.rocket),
                    height: 40,
                    width: 40,
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
            ],
          ),
        ),
      ),
    );
  }
}
