import 'package:real_estate/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleIconbutton extends StatelessWidget {
  AppbarTitleIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          decoration: IconButtonStyleHelper.outlineGrayTL20,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeftPrimarycontainer,
          ),
        ),
      ),
    );
  }
}
