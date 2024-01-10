import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/success_screen/models/success_model.dart';/// A provider class for the SuccessScreen.
///
/// This provider manages the state of the SuccessScreen, including the
/// current successModelObj

// ignore_for_file: must_be_immutable
class SuccessProvider extends ChangeNotifier {SuccessModel successModelObj = SuccessModel();

@override void dispose() { super.dispose(); } 
 }
