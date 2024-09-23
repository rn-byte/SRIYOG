import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';

import 'choose_country.dart';

class ProfessionOfTheDay extends StatefulWidget {
  const ProfessionOfTheDay({super.key});

  @override
  State<ProfessionOfTheDay> createState() => _ProfessionOfTheDayState();
}

class _ProfessionOfTheDayState extends State<ProfessionOfTheDay> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ChooseCountryScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 95,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned(
                    top: 50,
                    right: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.circleXmark,
                        color: Colors.red,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.028),
            Text('Professional Of The Day', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: MediaQuery.of(context).size.height * 0.11),
            CircleAvatar(
              foregroundImage: const AssetImage(SpImage.user1),
              backgroundColor: Colors.grey[500],
              radius: 80,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Text('Pandit', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text('Mr. Panda', style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text('Biratnagar', style: Theme.of(context).textTheme.headlineMedium),
            const Spacer(),
            SizedBox(
              width: 150,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    Icon(FontAwesomeIcons.whatsapp),
                    SizedBox(width: 20),
                    Text('Book Now'),
                    Spacer()
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.14),
          ],
        ),
      ),
    );
  }
}
