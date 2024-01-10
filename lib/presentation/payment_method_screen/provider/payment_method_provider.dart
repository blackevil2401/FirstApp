import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/payment_method_screen/models/payment_method_model.dart';/// A provider class for the PaymentMethodScreen.
///
/// This provider manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj

// ignore_for_file: must_be_immutable
class PaymentMethodProvider extends ChangeNotifier {PaymentMethodModel paymentMethodModelObj = PaymentMethodModel();

@override void dispose() { super.dispose(); } 
 }
