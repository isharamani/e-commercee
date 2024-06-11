
import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    required this.imageUrl,
    this.height,
    this.applyImageRadious=true,
    this.border,
    this.backGroundColor=TColors.light,
    this.fit,
    this.padding,
    this.isNetworkImage=false,
    this.onPressed,
    this.borderRadious= TSizes.md
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadious;
  final BoxBorder? border;
  final Color backGroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadious;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backGroundColor,
          borderRadius: BorderRadius.circular(borderRadious),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadious
                ? BorderRadius.circular(borderRadious)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
