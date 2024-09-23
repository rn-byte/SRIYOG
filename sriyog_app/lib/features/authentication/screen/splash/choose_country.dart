import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sriyog_app/features/authentication/screen/splash/choose_city.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';
import '../../../../common/widgets/fotter/fotter_section_widget.dart';

class ChooseCountryScreen extends StatelessWidget {
  const ChooseCountryScreen({super.key});

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
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
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
                  SizedBox(
                    width: 250,
                    child: DropdownButtonFormField(
                      hint: const Text('Select Country'),
                      items: const [
                        DropdownMenuItem(value: 'nepal', child: Text('Nepal')),
                        DropdownMenuItem(value: 'india', child: Text('India')),
                        DropdownMenuItem(value: 'china', child: Text('China')),
                        DropdownMenuItem(value: 'bhutan', child: Text('Bhutan')),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.018),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const ChooseCityScreen()),
                      child: const Text(
                        'ENTER',
                      ),
                    ),
                  ),
                ],
              ),
              //SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const Spacer(),
              const FotterSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
