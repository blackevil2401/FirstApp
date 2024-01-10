import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/offer_screen_page/models/offer_screen_model.dart';import '../models/offerscreen_item_model.dart';/// A provider class for the OfferScreenPage.
///
/// This provider manages the state of the OfferScreenPage, including the
/// current offerScreenModelObj

// ignore_for_file: must_be_immutable
class OfferScreenProvider extends ChangeNotifier {OfferScreenModel offerScreenModelObj = OfferScreenModel();

@override void dispose() { super.dispose(); } 
 }
