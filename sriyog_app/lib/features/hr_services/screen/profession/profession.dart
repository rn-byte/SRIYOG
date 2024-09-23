import 'package:flutter/material.dart';
import 'package:sriyog_app/features/hr_services/screen/profession/widgets/profession_appbar.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';
import 'package:sriyog_app/utils/helpers/helper.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/layout/vertical_image_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SpProfressionScreen extends StatelessWidget {
  const SpProfressionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Scaffold(
      appBar: const SpProfessionAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(SpSizes.md),
        child: Column(
          children: [
            DropdownButtonFormField(
              hint: const Text('Choose Profession'),
              // decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              onChanged: (value) {},
              items: [
                'Teacher',
                'Plumber',
                'Construction',
                'Engineer',
                'Carpenter',
                'Painter',
                'Eletrician',
                'Delevery Man'
              ].map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
            ),
            const SizedBox(height: SpSizes.spaceBtwSections),
            SpGridLayout(
              itemBuilder: (context, index) => SpVerticalImageText(
                image: SpImage.deleveryMan,
                title: 'Delevery',
                height: 70,
                width: 70,
                background: isDark ? SpColor.white : Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              itemCount: 15,
            ),
          ],
        ),
      ),
    );
  }
}
