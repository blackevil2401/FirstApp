import 'models/filter_tab_container_model.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/presentation/filter_page/filter_page.dart';
import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:blackevil2401_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/filter_tab_container_provider.dart';

class FilterTabContainerScreen extends StatefulWidget {
  const FilterTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FilterTabContainerScreenState createState() =>
      FilterTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FilterTabContainerProvider(),
      child: FilterTabContainerScreen(),
    );
  }
}

class FilterTabContainerScreenState extends State<FilterTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
            child: Column(
              children: [
                _buildPriceRange(context),
                SizedBox(height: 35.v),
                _buildCondition(context),
                SizedBox(
                  height: 861.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      FilterPage(),
                      FilterPage(),
                      FilterPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 42.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCloseIcon,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_filter_search".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceRange(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_price_range".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              fontSize: 14.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Selector<FilterTabContainerProvider,
                      TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.priceController,
                    builder: (context, priceController, child) {
                      return CustomTextFormField(
                        controller: priceController,
                        hintText: "lbl_1_245".tr,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Selector<FilterTabContainerProvider,
                      TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.priceController1,
                    builder: (context, priceController1, child) {
                      return CustomTextFormField(
                        controller: priceController1,
                        hintText: "lbl_9_344".tr,
                        textInputAction: TextInputAction.done,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCondition(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_condition".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              fontSize: 14.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            height: 50.v,
            width: 261.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.blueGray300,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                border: Border.all(
                  color: appTheme.blue50,
                  width: 1.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_new".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_used".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_not_specified".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
