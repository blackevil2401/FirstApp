import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/account_page/models/account_model.dart';/// A provider class for the AccountPage.
///
/// This provider manages the state of the AccountPage, including the
/// current accountModelObj

// ignore_for_file: must_be_immutable
class AccountProvider extends ChangeNotifier {AccountModel accountModelObj = AccountModel();

@override void dispose() { super.dispose(); } 
 }
