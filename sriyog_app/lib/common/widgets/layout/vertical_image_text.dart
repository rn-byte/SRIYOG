import 'package:flutter/material.dart';
import 'package:sriyog_app/utils/constants/colors.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

import '../../../utils/constants/sizes.dart';

class SpVerticalImageText extends StatelessWidget {
  const SpVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.background,
    required this.height,
    required this.width,
    required this.borderRadius,
  });

  final String image, title;
  final Color? background;
  final double height, width;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(SpSizes.sm),
          decoration: BoxDecoration(
            color: isDark ? SpColor.darkContainer : SpColor.lightContainer,
            borderRadius: borderRadius,
          ),
          child: ClipRRect(
            borderRadius: borderRadius,
            child: Center(
              child: Image.asset(image),
            ),
          ),
        ),
        const SizedBox(height: SpSizes.sm),
        Text(
          title,
          style: Theme.of(context).textTheme.labelSmall,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        )
      ],
    );
  }
}
