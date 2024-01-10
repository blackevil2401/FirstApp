import 'models/register_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/core/utils/validation_functions.dart';import 'package:blackevil2401_s_application3/widgets/custom_elevated_button.dart';import 'package:blackevil2401_s_application3/widgets/custom_icon_button.dart';import 'package:blackevil2401_s_application3/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'provider/register_provider.dart';class RegisterScreen extends StatefulWidget {const RegisterScreen({Key? key}) : super(key: key);

@override RegisterScreenState createState() =>  RegisterScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => RegisterProvider(), child: RegisterScreen()); } 
 }

// ignore_for_file: must_be_immutable
class RegisterScreenState extends State<RegisterScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Center(child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [_buildPageHeader(context), SizedBox(height: 30.v), _buildFullName(context), SizedBox(height: 8.v), _buildEmail(context), SizedBox(height: 8.v), _buildPassword(context), SizedBox(height: 8.v), _buildPassword1(context), SizedBox(height: 20.v), _buildSignUp(context), SizedBox(height: 20.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_have_an_account2".tr, style: theme.textTheme.bodySmall), TextSpan(text: " "), TextSpan(text: "lbl_sign_in".tr, style: CustomTextStyles.labelLargePrimary_1)]), textAlign: TextAlign.left), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
Widget _buildPageHeader(BuildContext context) { return Column(children: [CustomIconButton(height: 72.adaptSize, width: 72.adaptSize, padding: EdgeInsets.all(20.h), decoration: IconButtonStyleHelper.fillPrimary, child: CustomImageView(imagePath: ImageConstant.imgClose)), SizedBox(height: 16.v), Text("msg_let_s_get_started".tr, style: TextStyle(color: theme.colorScheme.onPrimary.withOpacity(1), fontSize: 16.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700)), SizedBox(height: 9.v), Text("msg_create_an_new_account".tr, style: TextStyle(color: appTheme.blueGray300, fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400))]); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return Selector<RegisterProvider, TextEditingController?>(selector: (context, provider) => provider.fullNameController, builder: (context, fullNameController, child) {return CustomTextFormField(controller: fullNameController, hintText: "lbl_full_name".tr, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgLock, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));}); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return Selector<RegisterProvider, TextEditingController?>(selector: (context, provider) => provider.emailController, builder: (context, emailController, child) {return CustomTextFormField(controller: emailController, hintText: "lbl_your_email".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgEmailIcon, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));}); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return Selector<RegisterProvider, TextEditingController?>(selector: (context, provider) => provider.passwordController, builder: (context, passwordController, child) {return CustomTextFormField(controller: passwordController, hintText: "lbl_password".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));}); } 
/// Section Widget
Widget _buildPassword1(BuildContext context) { return Selector<RegisterProvider, TextEditingController?>(selector: (context, provider) => provider.passwordController1, builder: (context, passwordController1, child) {return CustomTextFormField(controller: passwordController1, hintText: "lbl_password_again".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 48.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, contentPadding: EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v));}); } 
/// Section Widget
Widget _buildSignUp(BuildContext context) { return CustomElevatedButton(text: "lbl_sign_up".tr, onPressed: () {onTapSignUp(context);}); } 
/// Navigates to the dashboardContainerScreen when the action is triggered.
onTapSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardContainerScreen, ); } 
 }
