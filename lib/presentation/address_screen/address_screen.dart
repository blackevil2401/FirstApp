import '../address_screen/widgets/addresses_item_widget.dart';import 'models/address_model.dart';import 'models/addresses_item_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:blackevil2401_s_application3/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'provider/address_provider.dart';class AddressScreen extends StatefulWidget {const AddressScreen({Key? key}) : super(key: key);

@override AddressScreenState createState() =>  AddressScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddressProvider(), child: AddressScreen()); } 
 }
class AddressScreenState extends State<AddressScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [SizedBox(height: 17.v), _buildAddresses(context), Spacer()])), bottomNavigationBar: _buildAddAddress(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_address".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildAddresses(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Consumer<AddressProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 18.v);}, itemCount: provider.addressModelObj.addressesItemList.length, itemBuilder: (context, index) {AddressesItemModel model = provider.addressModelObj.addressesItemList[index]; return AddressesItemWidget(model);});})); } 
/// Section Widget
Widget _buildAddAddress(BuildContext context) { return CustomElevatedButton(text: "lbl_add_address".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
