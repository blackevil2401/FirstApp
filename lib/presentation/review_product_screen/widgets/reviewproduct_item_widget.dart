import '../models/reviewproduct_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReviewproductItemWidget extends StatelessWidget {
  ReviewproductItemWidget(
    this.reviewproductItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewproductItemModel reviewproductItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: reviewproductItemModelObj?.jamesLawson,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewproductItemModelObj.jamesLawson1!,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      fontSize: 14.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 5,
                    itemSize: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 333.h,
          child: Text(
            reviewproductItemModelObj.description!,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: appTheme.blueGray300,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 14.v),
        Text(
          reviewproductItemModelObj.month!,
          style: TextStyle(
            color: appTheme.blueGray300,
            fontSize: 10.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
