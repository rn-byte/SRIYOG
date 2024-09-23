import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sriyog_app/utils/constants/sizes.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/devices/device_utility.dart';

class SpProfessionAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SpProfessionAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SpAppBar(
      title: Text('Sriyog | Professions', style: Theme.of(context).textTheme.headlineSmall),
      showBackArrow: false,
      imageIcon: Padding(
        padding: const EdgeInsets.all(SpSizes.sm),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(SpImage.user1),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Iconsax.location)),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SpDeviceUtils.getAppBarHeight());
}
