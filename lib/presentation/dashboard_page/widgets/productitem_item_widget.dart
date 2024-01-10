import '../models/productitem_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductitemItemWidget extends StatelessWidget {
  ProductitemItemWidget(
    this.productitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductitemItemModel productitemItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 141.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: productitemItemModelObj?.image,
            height: 109.adaptSize,
            width: 109.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 105.h,
            child: Text(
              productitemItemModelObj.fSNikeAirMax!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme.colorScheme.onPrimary.withOpacity(1),
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Text(
            productitemItemModelObj.price!,
            style: TextStyle(
              color: theme.colorScheme.primary.withOpacity(1),
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Text(
                productitemItemModelObj.price1!,
                style: TextStyle(
                  color: appTheme.blueGray300,
                  fontSize: 10.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  productitemItemModelObj.offer!,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 10.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
