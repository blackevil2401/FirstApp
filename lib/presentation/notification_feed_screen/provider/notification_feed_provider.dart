import 'package:flutter/material.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/presentation/notification_feed_screen/models/notification_feed_model.dart';/// A provider class for the NotificationFeedScreen.
///
/// This provider manages the state of the NotificationFeedScreen, including the
/// current notificationFeedModelObj

// ignore_for_file: must_be_immutable
class NotificationFeedProvider extends ChangeNotifier {NotificationFeedModel notificationFeedModelObj = NotificationFeedModel();

@override void dispose() { super.dispose(); } 
 }
