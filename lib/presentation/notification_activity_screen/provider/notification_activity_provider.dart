import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/notification_activity_screen/models/notification_activity_model.dart';/// A provider class for the NotificationActivityScreen.
///
/// This provider manages the state of the NotificationActivityScreen, including the
/// current notificationActivityModelObj

// ignore_for_file: must_be_immutable
class NotificationActivityProvider extends ChangeNotifier {NotificationActivityModel notificationActivityModelObj = NotificationActivityModel();

@override void dispose() { super.dispose(); } 
 }
