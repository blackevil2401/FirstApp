import '../ship_to_screen/widgets/shiptolist_item_widget.dart';import 'models/ship_to_model.dart';import 'models/shiptolist_item_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_trailing_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:blackevil2401_s_application3/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/ship_to_provider.dart';class ShipToScreen extends StatefulWidget {const ShipToScreen({Key? key}) : super(key: key);

@override ShipToScreenState createState() =>  ShipToScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ShipToProvider(), child: ShipToScreen()); } 
 }
class ShipToScreenState extends State<ShipToScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 23.v), child: Column(children: [SizedBox(height: 4.v), _buildShipToList(context)])), bottomNavigationBar: _buildNextButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_ship_to".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgPlusIcon, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))]); } 
/// Section Widget
Widget _buildShipToList(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Consumer<ShipToProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 22.v);}, itemCount: provider.shipToModelObj.shiptolistItemList.length, itemBuilder: (context, index) {ShiptolistItemModel model = provider.shipToModelObj.shiptolistItemList[index]; return ShiptolistItemWidget(model);});}))); } 
/// Section Widget
Widget _buildNextButton(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapNextButton(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the paymentMethodScreen when the action is triggered.
onTapNextButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.paymentMethodScreen, ); } 
 }
