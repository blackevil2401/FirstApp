import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/ship_to_screen/models/ship_to_model.dart';import '../models/shiptolist_item_model.dart';/// A provider class for the ShipToScreen.
///
/// This provider manages the state of the ShipToScreen, including the
/// current shipToModelObj

// ignore_for_file: must_be_immutable
class ShipToProvider extends ChangeNotifier {ShipToModel shipToModelObj = ShipToModel();

@override void dispose() { super.dispose(); } 
 }
