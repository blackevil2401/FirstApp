import 'models/add_card_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/core/utils/validation_functions.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:blackevil2401_s_application3/widgets/custom_elevated_button.dart';import 'package:blackevil2401_s_application3/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/add_card_provider.dart';class AddCardScreen extends StatefulWidget {const AddCardScreen({Key? key}) : super(key: key);

@override AddCardScreenState createState() =>  AddCardScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddCardProvider(), child: AddCardScreen()); } 
 }

// ignore_for_file: must_be_immutable
class AddCardScreenState extends State<AddCardScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v), child: Column(children: [_buildCardNumberColumn(context), SizedBox(height: 24.v), _buildExpirationDateColumn(context), SizedBox(height: 29.v), _buildSecurityCodeColumn(context), SizedBox(height: 23.v), _buildCardHolderColumn(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildAddCardButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildCardNumberColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_number".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 12.v), Selector<AddCardProvider, TextEditingController?>(selector: (context, provider) => provider.cardNumberController, builder: (context, cardNumberController, child) {return CustomTextFormField(controller: cardNumberController, hintText: "msg_enter_card_number".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});})]); } 
/// Section Widget
Widget _buildExpirationDateColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_expiration_date".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 11.v), Selector<AddCardProvider, TextEditingController?>(selector: (context, provider) => provider.expirationDateController, builder: (context, expirationDateController, child) {return CustomTextFormField(controller: expirationDateController, hintText: "lbl_expiration_date".tr);})]); } 
/// Section Widget
Widget _buildSecurityCodeColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_security_code".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 11.v), Selector<AddCardProvider, TextEditingController?>(selector: (context, provider) => provider.securityCodeController, builder: (context, securityCodeController, child) {return CustomTextFormField(controller: securityCodeController, hintText: "lbl_security_code".tr);})]); } 
/// Section Widget
Widget _buildCardHolderColumn(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_card_holder2".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 12.v), Selector<AddCardProvider, TextEditingController?>(selector: (context, provider) => provider.cardNumberController1, builder: (context, cardNumberController1, child) {return CustomTextFormField(controller: cardNumberController1, hintText: "msg_enter_card_number".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});})]); } 
/// Section Widget
Widget _buildAddCardButton(BuildContext context) { return CustomElevatedButton(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCardButton(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the creditCardAndDebitScreen when the action is triggered.
onTapAddCardButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.creditCardAndDebitScreen, ); } 
 }
