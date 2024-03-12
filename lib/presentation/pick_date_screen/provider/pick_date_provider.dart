import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/pick_date_model.dart';import 'package:easy_date_timeline/easy_date_timeline.dart';import '../models/time1_item_model.dart';/// A provider class for the PickDateScreen.
///
/// This provider manages the state of the PickDateScreen, including the
/// current pickDateModelObj

// ignore_for_file: must_be_immutable
class PickDateProvider extends ChangeNotifier {PickDateModel pickDateModelObj = PickDateModel();

DateTime? selectedDatesFromCalendar1;

@override void dispose() { super.dispose(); } 
 }
