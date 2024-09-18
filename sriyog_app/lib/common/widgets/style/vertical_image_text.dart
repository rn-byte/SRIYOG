import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class SpVerticalImageText extends StatelessWidget {
  const SpVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.background,
  });

  final String image, title;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(SpSizes.md),
          //decoration: BoxDecoration(color: Colors.grey[200]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Center(
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(image) as ImageProvider,
                color: background,
              ),
            ),
          ),
        ),
        Text(title)
      ],
    );
  }
}
