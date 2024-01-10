import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/list_category_screen/models/list_category_model.dart';/// A provider class for the ListCategoryScreen.
///
/// This provider manages the state of the ListCategoryScreen, including the
/// current listCategoryModelObj

// ignore_for_file: must_be_immutable
class ListCategoryProvider extends ChangeNotifier {ListCategoryModel listCategoryModelObj = ListCategoryModel();

@override void dispose() { super.dispose(); } 
 }
