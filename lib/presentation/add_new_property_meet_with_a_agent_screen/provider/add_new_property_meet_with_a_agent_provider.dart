import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/add_new_property_meet_with_a_agent_model.dart';import 'package:easy_date_timeline/easy_date_timeline.dart';import '../models/time_item_model.dart';/// A provider class for the AddNewPropertyMeetWithAAgentScreen.
///
/// This provider manages the state of the AddNewPropertyMeetWithAAgentScreen, including the
/// current addNewPropertyMeetWithAAgentModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyMeetWithAAgentProvider extends ChangeNotifier {AddNewPropertyMeetWithAAgentModel addNewPropertyMeetWithAAgentModelObj = AddNewPropertyMeetWithAAgentModel();

DateTime? selectedDatesFromCalendar1;

@override void dispose() { super.dispose(); } 
 }
