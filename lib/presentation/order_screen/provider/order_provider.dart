import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/order_screen/models/order_model.dart';import '../models/orders_item_model.dart';/// A provider class for the OrderScreen.
///
/// This provider manages the state of the OrderScreen, including the
/// current orderModelObj

// ignore_for_file: must_be_immutable
class OrderProvider extends ChangeNotifier {OrderModel orderModelObj = OrderModel();

@override void dispose() { super.dispose(); } 
 }
