import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/choose_credit_or_debit_card_screen/models/choose_credit_or_debit_card_model.dart';import '../models/user_item_model.dart';/// A provider class for the ChooseCreditOrDebitCardScreen.
///
/// This provider manages the state of the ChooseCreditOrDebitCardScreen, including the
/// current chooseCreditOrDebitCardModelObj

// ignore_for_file: must_be_immutable
class ChooseCreditOrDebitCardProvider extends ChangeNotifier {ChooseCreditOrDebitCardModel chooseCreditOrDebitCardModelObj = ChooseCreditOrDebitCardModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); } 
 }
