import 'models/notification_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/notification_provider.dart';class NotificationScreen extends StatefulWidget {const NotificationScreen({Key? key}) : super(key: key);

@override NotificationScreenState createState() =>  NotificationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NotificationProvider(), child: NotificationScreen()); } 
 }
class NotificationScreenState extends State<NotificationScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 12.v), child: Column(children: [_buildNotificationOptionRow(context, listIconImage: ImageConstant.imgSort, feedText: "lbl_offer".tr, onTapNotificationOptionRow: () {onTapNotificationOptionRow(context);}), _buildNotificationOptionRow(context, listIconImage: ImageConstant.imgListIcon, feedText: "lbl_feed".tr, onTapNotificationOptionRow: () {onTapNotificationOptionRow1(context);}), SizedBox(height: 5.v), _buildNotificationOptionRow(context, listIconImage: ImageConstant.imgNotificationIconPrimary, feedText: "lbl_acivity".tr, onTapNotificationOptionRow: () {onTapNotificationOptionRow2(context);})])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_notification".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Common widget
Widget _buildNotificationOptionRow(BuildContext context, {required String listIconImage, required String feedText, Function? onTapNotificationOptionRow, }) { return GestureDetector(onTap: () {onTapNotificationOptionRow!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: listIconImage, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v), child: Text(feedText, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the notificationOfferScreen when the action is triggered.
onTapNotificationOptionRow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationOfferScreen, ); } 
/// Navigates to the notificationFeedScreen when the action is triggered.
onTapNotificationOptionRow1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationFeedScreen, ); } 
/// Navigates to the notificationActivityScreen when the action is triggered.
onTapNotificationOptionRow2(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationActivityScreen, ); } 
 }
