import '../models/arrowright_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArrowrightItemWidget extends StatelessWidget {
  ArrowrightItemWidget(
    this.arrowrightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArrowrightItemModel arrowrightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 70.adaptSize,
              width: 70.adaptSize,
              padding: EdgeInsets.all(23.h),
              child: CustomImageView(
                imagePath: arrowrightItemModelObj?.arrowRight,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              arrowrightItemModelObj.manShirt!,
              style: TextStyle(
                color: appTheme.blueGray300,
                fontSize: 10.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
