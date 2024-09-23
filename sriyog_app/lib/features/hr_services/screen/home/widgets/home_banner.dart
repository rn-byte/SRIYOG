import 'package:flutter/material.dart';
import 'package:sriyog_app/utils/constants/image_string.dart';

class SpHomeBanner extends StatelessWidget {
  const SpHomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.27,
          width: double.infinity,
          child: Image.asset(
            SpImage.ktmBanner,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
