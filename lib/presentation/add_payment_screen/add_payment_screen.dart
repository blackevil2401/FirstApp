import 'models/add_payment_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/add_payment_provider.dart';class AddPaymentScreen extends StatefulWidget {const AddPaymentScreen({Key? key}) : super(key: key);

@override AddPaymentScreenState createState() =>  AddPaymentScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddPaymentProvider(), child: AddPaymentScreen()); } 
 }
class AddPaymentScreenState extends State<AddPaymentScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [_buildPaymentOptionPaypal(context, paypalIcon: ImageConstant.imgCreditCardIcon, paypalText: "msg_credit_card_or_debit".tr, onTapPaymentOptionPaypal: () {onTapPaymentOptionPaypal(context);}), _buildPaymentOptionPaypal(context, paypalIcon: ImageConstant.imgPaypalIcon, paypalText: "lbl_paypal".tr), SizedBox(height: 5.v), _buildPaymentOptionPaypal(context, paypalIcon: ImageConstant.imgBankIcon, paypalText: "lbl_bank_transfer".tr)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_payment".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Common widget
Widget _buildPaymentOptionPaypal(BuildContext context, {required String paypalIcon, required String paypalText, Function? onTapPaymentOptionPaypal, }) { return GestureDetector(onTap: () {onTapPaymentOptionPaypal!.call();}, child: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Row(children: [CustomImageView(imagePath: paypalIcon, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v), child: Text(paypalText, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
onTapPaymentOptionPaypal(BuildContext context) { NavigatorService.pushNamed(AppRoutes.creditCardAndDebitScreen, ); } 
 }
