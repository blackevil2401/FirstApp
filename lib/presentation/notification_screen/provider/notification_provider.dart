import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/notification_screen/models/notification_model.dart';/// A provider class for the NotificationScreen.
///
/// This provider manages the state of the NotificationScreen, including the
/// current notificationModelObj

// ignore_for_file: must_be_immutable
class NotificationProvider extends ChangeNotifier {NotificationModel notificationModelObj = NotificationModel();

@override void dispose() { super.dispose(); } 
 }
