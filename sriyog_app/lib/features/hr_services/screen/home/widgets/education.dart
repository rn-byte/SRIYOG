import 'package:flutter/material.dart';

import '../../../../../common/widgets/layout/grid_layout.dart';
import '../../../../../common/widgets/layout/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/helpers/helper.dart';

class SpEducationCategory extends StatelessWidget {
  const SpEducationCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Column(
      children: [
        SpGridLayout(
          itemBuilder: (context, index) => SpVerticalImageText(
            image: SpImage.teacher,
            title: 'Teacher',
            height: 70,
            width: 70,
            background: isDark ? SpColor.white : Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          itemCount: 5,
        ),
      ],
    );
  }
}
