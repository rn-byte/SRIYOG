import 'package:flutter/material.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';

import '../../../../../common/widgets/style/vertical_image_text.dart';
import '../../../../../utils/constants/image_string.dart';

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
    );
  }
}
