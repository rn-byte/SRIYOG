import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/devices/device_utility.dart';
import '../../../utils/helpers/helper.dart';

class SpAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SpAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.actions,
      this.leadingOnPressed,
      this.leadingIcon});
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = SpHelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.all(0),
      child: AppBar(
        automaticallyImplyLeading: false,
        systemOverlayStyle: isDark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        backgroundColor: isDark ? Colors.grey[900] : Colors.grey[200],
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Navigator.pop,
                icon: Icon(
                  Iconsax.arrow_left,
                  color: isDark ? Colors.white : Colors.black,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(
                      leadingIcon,
                      color: isDark ? Colors.white : Colors.black,
                    ))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SpDeviceUtils.getAppBarHeight());
}
