import '../explore_page/widgets/categories1_item_widget.dart';import '../explore_page/widgets/categories_item_widget.dart';import 'models/categories1_item_model.dart';import 'models/categories_item_model.dart';import 'models/explore_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title_searchview.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_trailing_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/explore_provider.dart';class ExplorePage extends StatefulWidget {const ExplorePage({Key? key}) : super(key: key);

@override ExplorePageState createState() =>  ExplorePageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ExploreProvider(), child: ExplorePage()); } 
 }
class ExplorePageState extends State<ExplorePage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), child: Column(children: [_buildManFashion(context), SizedBox(height: 37.v), _buildWomanFashion(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: Selector<ExploreProvider, TextEditingController?>(selector: (context, provider) => provider.searchController, builder: (context, searchController, child) {return AppbarTitleSearchview(margin: EdgeInsets.only(left: 16.h), hintText: "lbl_search_product".tr, controller: searchController);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgLoveIcon, margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h)), Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgNotificationIcon, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center, onTap: () {onTapImgNotificationIcon(context);}), CustomImageView(imagePath: ImageConstant.imgClosePink300, height: 8.adaptSize, width: 8.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(left: 14.h, right: 2.h, bottom: 16.v))]))]); } 
/// Section Widget
Widget _buildManFashion(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_man_fashion".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 13.v), Consumer<ExploreProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 94.v, crossAxisCount: 4, mainAxisSpacing: 21.h, crossAxisSpacing: 21.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.exploreModelObj.categoriesItemList.length, itemBuilder: (context, index) {CategoriesItemModel model = provider.exploreModelObj.categoriesItemList[index]; return CategoriesItemWidget(model);});})]); } 
/// Section Widget
Widget _buildWomanFashion(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_woman_fashion".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 13.v), Consumer<ExploreProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 93.v, crossAxisCount: 4, mainAxisSpacing: 21.h, crossAxisSpacing: 21.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.exploreModelObj.categories1ItemList.length, itemBuilder: (context, index) {Categories1ItemModel model = provider.exploreModelObj.categories1ItemList[index]; return Categories1ItemWidget(model);});})]); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapImgNotificationIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationScreen, ); } 
 }
