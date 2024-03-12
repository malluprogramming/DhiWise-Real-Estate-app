import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/settings_model.dart';/// A provider class for the SettingsScreen.
///
/// This provider manages the state of the SettingsScreen, including the
/// current settingsModelObj

// ignore_for_file: must_be_immutable
class SettingsProvider extends ChangeNotifier {SettingsModel settingsModelObj = SettingsModel();

bool isSelectedSwitch = false;

bool isSelectedSwitch1 = false;

@override void dispose() { super.dispose(); } 
void changeSwitchBox1(bool value) { isSelectedSwitch = value; notifyListeners(); } 
void changeSwitchBox2(bool value) { isSelectedSwitch1 = value; notifyListeners(); } 
 }
