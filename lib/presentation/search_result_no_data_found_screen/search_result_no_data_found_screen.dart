import 'models/search_result_no_data_found_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title_image.dart';
import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title_searchview.dart';
import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:blackevil2401_s_application3/widgets/custom_drop_down.dart';
import 'package:blackevil2401_s_application3/widgets/custom_elevated_button.dart';
import 'package:blackevil2401_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/search_result_no_data_found_provider.dart';

class SearchResultNoDataFoundScreen extends StatefulWidget {
  const SearchResultNoDataFoundScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultNoDataFoundScreenState createState() =>
      SearchResultNoDataFoundScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchResultNoDataFoundProvider(),
      child: SearchResultNoDataFoundScreen(),
    );
  }
}

class SearchResultNoDataFoundScreenState
    extends State<SearchResultNoDataFoundScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              _buildResultCounter(context),
              Spacer(
                flex: 32,
              ),
              _buildNoData(context),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_back_to_home".tr,
              ),
              Spacer(
                flex: 67,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 79.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                Selector<SearchResultNoDataFoundProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return AppbarTitleSearchview(
                      hintText: "lbl_search_product".tr,
                      controller: searchController,
                    );
                  },
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgShortIcon,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                    bottom: 11.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgFilter,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                    bottom: 11.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildResultCounter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.5,
          child: Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_0_result".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimary,
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Selector<SearchResultNoDataFoundProvider,
            SearchResultNoDataFoundModel?>(
          selector: (
            context,
            provider,
          ) =>
              provider.searchResultNoDataFoundModelObj,
          builder: (context, searchResultNoDataFoundModelObj, child) {
            return CustomDropDown(
              width: 103.h,
              icon: Container(
                margin: EdgeInsets.only(left: 8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDownIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              hintText: "lbl_man_shoes".tr,
              items: searchResultNoDataFoundModelObj?.dropdownItemList ?? [],
              onChanged: (value) {
                context
                    .read<SearchResultNoDataFoundProvider>()
                    .onSelected(value);
              },
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNoData(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 53.h),
      child: Column(
        children: [
          CustomIconButton(
            height: 72.adaptSize,
            width: 72.adaptSize,
            padding: EdgeInsets.all(28.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCloseOnprimarycontainer,
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            "msg_product_not_found".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              fontSize: 24.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "msg_thank_you_for_shopping".tr,
            style: TextStyle(
              color: appTheme.blueGray300,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
