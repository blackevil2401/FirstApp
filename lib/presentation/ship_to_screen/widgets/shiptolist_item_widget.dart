import '../models/shiptolist_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShiptolistItemWidget extends StatelessWidget {
  ShiptolistItemWidget(
    this.shiptolistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShiptolistItemModel shiptolistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            shiptolistItemModelObj.priscekila!,
            style: TextStyle(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              fontSize: 14.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 264.h,
            margin: EdgeInsets.only(right: 30.h),
            child: Text(
              shiptolistItemModelObj.address!,
              maxLines: 2,
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
            shiptolistItemModelObj.mobileNo!,
            style: TextStyle(
              color: appTheme.blueGray300,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            children: [
              Text(
                shiptolistItemModelObj.edit!,
                style: TextStyle(
                  color: theme.colorScheme.primary.withOpacity(1),
                  fontSize: 14.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Text(
                  shiptolistItemModelObj.delete!,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 14.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
