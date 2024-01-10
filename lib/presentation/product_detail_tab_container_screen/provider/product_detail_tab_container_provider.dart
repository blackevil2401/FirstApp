import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/product_detail_tab_container_screen/models/product_detail_tab_container_model.dart';import '../models/widget_item_model.dart';/// A provider class for the ProductDetailTabContainerScreen.
///
/// This provider manages the state of the ProductDetailTabContainerScreen, including the
/// current productDetailTabContainerModelObj

// ignore_for_file: must_be_immutable
class ProductDetailTabContainerProvider extends ChangeNotifier {ProductDetailTabContainerModel productDetailTabContainerModelObj = ProductDetailTabContainerModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); } 
 }
