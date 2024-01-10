import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/add_payment_screen/models/add_payment_model.dart';/// A provider class for the AddPaymentScreen.
///
/// This provider manages the state of the AddPaymentScreen, including the
/// current addPaymentModelObj

// ignore_for_file: must_be_immutable
class AddPaymentProvider extends ChangeNotifier {AddPaymentModel addPaymentModelObj = AddPaymentModel();

@override void dispose() { super.dispose(); } 
 }
