import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/search_result_screen/models/search_result_model.dart';import '../models/searchresult_item_model.dart';/// A provider class for the SearchResultScreen.
///
/// This provider manages the state of the SearchResultScreen, including the
/// current searchResultModelObj

// ignore_for_file: must_be_immutable
class SearchResultProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

SearchResultModel searchResultModelObj = SearchResultModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
onSelected(dynamic value) { for (var element in searchResultModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
