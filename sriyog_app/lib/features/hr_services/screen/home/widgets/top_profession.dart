import 'package:flutter/material.dart';
import 'package:sriyog_app/common/widgets/texts/section_heading.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';
import '../../../../../common/widgets/layout/vertical_image_text.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class SpTopProfession extends StatelessWidget {
  const SpTopProfession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = SpHelper.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: SpSizes.sm),
          child: SpSectionHeading(title: 'Top Profession'),
        ),
        const SizedBox(height: SpSizes.spaceBtwItems / 1.2),

        /// Top Profession
        SizedBox(
          height: 100,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SpVerticalImageText(
                  height: 65,
                  width: 65,
                  image: SpImage.plumber,
                  title: 'Plumber',
                  //background: isDark ? SpColor.white : Colors.black,
                  borderRadius: BorderRadius.circular(50),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: SpSizes.md,
                  ),
              itemCount: 8),
        )
      ],
    );
  }
}
