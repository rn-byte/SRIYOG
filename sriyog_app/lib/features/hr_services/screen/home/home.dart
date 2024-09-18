import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sriyog_app/common/widgets/appbar/appbar.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';
import 'package:sriyog_app/utils/constants/sizes.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

import '../../../../common/widgets/style/vertical_image_text.dart';

class SpHomeScreen extends StatelessWidget {
  const SpHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Scaffold(
      appBar: SpAppBar(
        title: Text('Sriyog | Kathmandu', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: false,
        leadingIcon: Icons.person,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.location)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(SpSizes.sm),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/banner/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: SpSizes.spaceBtwItems),
              Row(
                children: [
                  Text(
                    "Skilled Professionals",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(width: SpSizes.spaceBtwItems),
                  const Icon(Iconsax.verify5)
                ],
              ),
              const SizedBox(height: SpSizes.spaceBtwItems / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Top Profession",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  /// Top Profession
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SpVerticalImageText(
                            image: SpImage.plumber,
                            title: 'Plumber',
                            background: isDark ? Colors.white : Colors.black,
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 5,
                            ),
                        itemCount: 5),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: SpSizes.spaceBtwItems),
                  Text(
                    "Top Professionals",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  /// Top Profession
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const SpVerticalImageText(
                            image: SpImage.user1,
                            title: 'Mr. Panda',
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 5,
                            ),
                        itemCount: 5),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
