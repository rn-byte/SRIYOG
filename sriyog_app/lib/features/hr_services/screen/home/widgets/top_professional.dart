import 'package:flutter/material.dart';

import '../../../../../common/widgets/style/vertical_image_text.dart';
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
    );
  }
}
