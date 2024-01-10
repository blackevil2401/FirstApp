import '../models/categories_item_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: categoriesItemModelObj?.manWorkEquipment,
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          categoriesItemModelObj.officeBag!,
          style: TextStyle(
            color: appTheme.blueGray300,
            fontSize: 10.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
