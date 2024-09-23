import 'package:flutter/material.dart';
import 'package:sriyog_app/features/authentication/screen/splash/widgets/arrow_widget.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/helpers/helper.dart';

class FotterSectionWidget extends StatelessWidget {
  const FotterSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = SpHelper.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(SpImage.rocket),
              height: 40,
              width: 40,
              color: isDark ? SpColor.grey : SpColor.darkerGrey,
            ),
            const SizedBox(width: 8),
            Container(
              width: 1,
              height: 30,
              color: Colors.grey,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Powered By',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Microsoft for Startups',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          child: CustomPaint(
            size: const Size(250, 25),
            painter: ArrowLinePainter(arrowColor: isDark ? SpColor.white : SpColor.black),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        const Text(
          'Proudly Made in The cloud',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w100),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
      ],
    );
  }
}
