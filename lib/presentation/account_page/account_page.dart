import 'models/account_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_trailing_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/account_provider.dart';class AccountPage extends StatefulWidget {const AccountPage({Key? key}) : super(key: key);

@override AccountPageState createState() =>  AccountPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AccountProvider(), child: AccountPage()); } 
 }
class AccountPageState extends State<AccountPage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 11.v), child: Column(children: [_buildAccountOptionOrder(context, bagIconImage: ImageConstant.imgLockPrimary, orderText: "lbl_profile".tr, onTapAccountOptionOrder: () {onTapAccountOptionOrder(context);}), _buildAccountOptionOrder(context, bagIconImage: ImageConstant.imgBagIcon, orderText: "lbl_order".tr), _buildAccountOptionOrder(context, bagIconImage: ImageConstant.imgLinkedin, orderText: "lbl_address".tr), SizedBox(height: 5.v), _buildAccountOptionOrder(context, bagIconImage: ImageConstant.imgCreditCardIcon, orderText: "lbl_payment".tr, onTapAccountOptionOrder: () {onTapAccountOptionOrder1(context);})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: AppbarTitle(text: "lbl_account".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationIcon, margin: EdgeInsets.fromLTRB(13.h, 15.v, 13.h, 16.v), onTap: () {onTapNotificationIcon(context);})]); } 
/// Common widget
Widget _buildAccountOptionOrder(BuildContext context, {required String bagIconImage, required String orderText, Function? onTapAccountOptionOrder, }) { return GestureDetector(onTap: () {onTapAccountOptionOrder!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: bagIconImage, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v), child: Text(orderText, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)))]))); } 
/// Navigates to the notificationScreen when the action is triggered.
onTapNotificationIcon(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationScreen, ); } 
/// Navigates to the profileScreen when the action is triggered.
onTapAccountOptionOrder(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileScreen, ); } 
/// Navigates to the addPaymentScreen when the action is triggered.
onTapAccountOptionOrder1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addPaymentScreen, ); } 
 }
