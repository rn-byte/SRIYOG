import 'package:flutter/material.dart';
import '../../../../../common/widgets/layout/vertical_image_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class SpTopProfessional extends StatelessWidget {
  const SpTopProfessional({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: SpSizes.sm),
          child: SpSectionHeading(
            title: "Top Professionals",
          ),
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
                  height: 70,
                  width: 70,
                  image: SpImage.user1,
                  title: 'Mr. Panda',
                  borderRadius: BorderRadius.circular(50),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: SpSizes.md,
                  ),
              itemCount: 5),
        )
      ],
    );
  }
}
