import 'models/success_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/custom_elevated_button.dart';import 'package:blackevil2401_s_application3/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'provider/success_provider.dart';class SuccessScreen extends StatefulWidget {const SuccessScreen({Key? key}) : super(key: key);

@override SuccessScreenState createState() =>  SuccessScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SuccessProvider(), child: SuccessScreen()); } 
 }
class SuccessScreenState extends State<SuccessScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSuccessSection(context), SizedBox(height: 16.v), CustomElevatedButton(text: "lbl_back_to_order".tr, onPressed: () {onTapBackToOrder(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildSuccessSection(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 55.h), child: Column(children: [CustomIconButton(height: 72.adaptSize, width: 72.adaptSize, padding: EdgeInsets.all(24.h), decoration: IconButtonStyleHelper.outlinePrimary, child: CustomImageView(imagePath: ImageConstant.imgCheckmark)), SizedBox(height: 15.v), Text("lbl_success".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 24.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 11.v), Opacity(opacity: 0.5, child: Text("msg_thank_you_for_shopping".tr, style: TextStyle(color: theme.colorScheme.onPrimary, fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400)))])); } 
/// Navigates to the orderScreen when the action is triggered.
onTapBackToOrder(BuildContext context) { NavigatorService.pushNamed(AppRoutes.orderScreen, ); } 
 }
