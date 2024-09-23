import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sriyog_app/features/authentication/screen/splash/choose_city.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';

class ProfessionOfTheDay extends StatelessWidget {
  const ProfessionOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.14),
              Text('Professional Of The Day', style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Column(
                children: [
                  CircleAvatar(
                    foregroundImage: const AssetImage(SpImage.user1),
                    backgroundColor: Colors.grey[500],
                    radius: 50,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                  Text(
                    'Verified Professional Marketplace',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '100K+ Downloads',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.018),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const ChooseCityScreen()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.whatshot),
                          const Text(
                            'Book',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
