import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/search_screen/models/search_model.dart';/// A provider class for the SearchScreen.
///
/// This provider manages the state of the SearchScreen, including the
/// current searchModelObj

// ignore_for_file: must_be_immutable
class SearchProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

SearchModel searchModelObj = SearchModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
