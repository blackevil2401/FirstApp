import 'models/sort_by_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/sort_by_provider.dart';class SortByScreen extends StatefulWidget {const SortByScreen({Key? key}) : super(key: key);

@override SortByScreenState createState() =>  SortByScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SortByProvider(), child: SortByScreen()); } 
 }
class SortByScreenState extends State<SortByScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_best_match".tr, style: TextStyle(color: theme.colorScheme.primary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 37.v), Text("msg_time_ending_soonest".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 35.v), Text("msg_time_newly_listed".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 36.v), Text("msg_price_shipping".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 36.v), Text("msg_price_shipping2".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 34.v), Text("msg_distance_nearest".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_sort_by".tr, margin: EdgeInsets.only(left: 12.h))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
