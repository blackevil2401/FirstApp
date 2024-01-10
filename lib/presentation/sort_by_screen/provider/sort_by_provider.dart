import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/sort_by_screen/models/sort_by_model.dart';/// A provider class for the SortByScreen.
///
/// This provider manages the state of the SortByScreen, including the
/// current sortByModelObj

// ignore_for_file: must_be_immutable
class SortByProvider extends ChangeNotifier {SortByModel sortByModelObj = SortByModel();

@override void dispose() { super.dispose(); } 
 }
