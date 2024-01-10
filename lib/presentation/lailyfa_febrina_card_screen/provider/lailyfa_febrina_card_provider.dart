import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/lailyfa_febrina_card_screen/models/lailyfa_febrina_card_model.dart';/// A provider class for the LailyfaFebrinaCardScreen.
///
/// This provider manages the state of the LailyfaFebrinaCardScreen, including the
/// current lailyfaFebrinaCardModelObj

// ignore_for_file: must_be_immutable
class LailyfaFebrinaCardProvider extends ChangeNotifier {TextEditingController cardNumberController = TextEditingController();

TextEditingController expirationDateController = TextEditingController();

TextEditingController securityCodeController = TextEditingController();

TextEditingController cardHolderNameController = TextEditingController();

LailyfaFebrinaCardModel lailyfaFebrinaCardModelObj = LailyfaFebrinaCardModel();

@override void dispose() { super.dispose(); cardNumberController.dispose(); expirationDateController.dispose(); securityCodeController.dispose(); cardHolderNameController.dispose(); } 
 }
