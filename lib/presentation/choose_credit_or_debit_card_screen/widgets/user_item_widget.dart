import '../models/user_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserItemWidget extends StatelessWidget {
  UserItemWidget(
    this.userItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserItemModel userItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 22.v,
            width: 36.h,
            margin: EdgeInsets.only(left: 3.h),
          ),
          SizedBox(height: 30.v),
          Text(
            "msg_6326_9124".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              fontSize: 24.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_card_holder".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontSize: 10.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_dominic_ovo".tr,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 10.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 37.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_card_save".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontSize: 10.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "lbl_06_24".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 10.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
