import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sriyog_app/common/widgets/appbar/appbar.dart';
import 'package:sriyog_app/utils/constants/sizes.dart';
import 'widgets/home_banner.dart';
import 'widgets/top_profession.dart';
import 'widgets/top_professional.dart';

class SpHomeScreen extends StatelessWidget {
  const SpHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const SpHomeBanner(),
              const SizedBox(height: SpSizes.spaceBtwSections),
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
              const SpTopProfession(),
              const SpTopProfessional()
            ],
          ),
        ),
      ),
    );
  }
}
