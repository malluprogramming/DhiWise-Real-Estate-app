import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/notification_empty_states_model.dart';/// A provider class for the NotificationEmptyStatesScreen.
///
/// This provider manages the state of the NotificationEmptyStatesScreen, including the
/// current notificationEmptyStatesModelObj

// ignore_for_file: must_be_immutable
class NotificationEmptyStatesProvider extends ChangeNotifier {NotificationEmptyStatesModel notificationEmptyStatesModelObj = NotificationEmptyStatesModel();

@override void dispose() { super.dispose(); } 
 }
