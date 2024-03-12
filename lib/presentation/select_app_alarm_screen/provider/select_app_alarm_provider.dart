import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/select_app_alarm_model.dart';/// A provider class for the SelectAppAlarmScreen.
///
/// This provider manages the state of the SelectAppAlarmScreen, including the
/// current selectAppAlarmModelObj

// ignore_for_file: must_be_immutable
class SelectAppAlarmProvider extends ChangeNotifier {SelectAppAlarmModel selectAppAlarmModelObj = SelectAppAlarmModel();

@override void dispose() { super.dispose(); } 
 }
