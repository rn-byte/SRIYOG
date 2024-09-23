import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';

class SpPrimarySectionHeading extends StatelessWidget {
  const SpPrimarySectionHeading({
    super.key,
    required this.title,
    this.showVerifiedIcon = true,
  });
  final String title;
  final bool showVerifiedIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(width: SpSizes.spaceBtwItems),
        if (showVerifiedIcon) const Icon(Iconsax.verify5),
      ],
    );
  }
}
