import '../models/searchresult_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchresultItemWidget extends StatelessWidget {
  SearchresultItemWidget(
    this.searchresultItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchresultItemModel searchresultItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: searchresultItemModelObj?.image,
            height: 133.adaptSize,
            width: 133.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 107.h,
            child: Text(
              searchresultItemModelObj.nikeAirMaxReact!,
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
          SizedBox(height: 4.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 4,
          ),
          SizedBox(height: 18.v),
          Text(
            searchresultItemModelObj.price!,
            style: TextStyle(
              color: theme.colorScheme.primary.withOpacity(1),
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Text(
                searchresultItemModelObj.price1!,
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
                  searchresultItemModelObj.offer!,
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
