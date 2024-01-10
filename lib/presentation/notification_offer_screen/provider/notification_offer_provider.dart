import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/notification_offer_screen/models/notification_offer_model.dart';/// A provider class for the NotificationOfferScreen.
///
/// This provider manages the state of the NotificationOfferScreen, including the
/// current notificationOfferModelObj

// ignore_for_file: must_be_immutable
class NotificationOfferProvider extends ChangeNotifier {NotificationOfferModel notificationOfferModelObj = NotificationOfferModel();

@override void dispose() { super.dispose(); } 
 }
