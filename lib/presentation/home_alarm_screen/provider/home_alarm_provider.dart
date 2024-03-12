import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/home_alarm_model.dart';/// A provider class for the HomeAlarmScreen.
///
/// This provider manages the state of the HomeAlarmScreen, including the
/// current homeAlarmModelObj

// ignore_for_file: must_be_immutable
class HomeAlarmProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeAlarmModel homeAlarmModelObj = HomeAlarmModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
