import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/dashboard_page/models/dashboard_model.dart';import '../models/offerbanner_item_model.dart';import '../models/arrowright_item_model.dart';import '../models/productitem_item_model.dart';import '../models/megasaleheader_item_model.dart';import '../models/products_item_model.dart';/// A provider class for the DashboardPage.
///
/// This provider manages the state of the DashboardPage, including the
/// current dashboardModelObj

// ignore_for_file: must_be_immutable
class DashboardProvider extends ChangeNotifier {DashboardModel dashboardModelObj = DashboardModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); } 
 }
