import 'package:flutter/material.dart';
import 'package:blackevil2401_s_application3/core/app_export.dart';
import 'package:blackevil2401_s_application3/presentation/filter_tab_container_screen/models/filter_tab_container_model.dart';

/// A provider class for the FilterTabContainerScreen.
///
/// This provider manages the state of the FilterTabContainerScreen, including the
/// current filterTabContainerModelObj
class FilterTabContainerProvider extends ChangeNotifier {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceController1 = TextEditingController();

  FilterTabContainerModel filterTabContainerModelObj =
      FilterTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
    priceController1.dispose();
  }
}
