import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/address_screen/models/address_model.dart';import '../models/addresses_item_model.dart';/// A provider class for the AddressScreen.
///
/// This provider manages the state of the AddressScreen, including the
/// current addressModelObj

// ignore_for_file: must_be_immutable
class AddressProvider extends ChangeNotifier {AddressModel addressModelObj = AddressModel();

@override void dispose() { super.dispose(); } 
 }
