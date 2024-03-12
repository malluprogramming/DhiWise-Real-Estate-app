import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/confirm_request_bottom_sheet_model.dart';import '../models/confirmrequestgrid_item_model.dart';/// A provider class for the ConfirmRequestBottomSheetBottomsheet.
///
/// This provider manages the state of the ConfirmRequestBottomSheetBottomsheet, including the
/// current confirmRequestBottomSheetModelObj

// ignore_for_file: must_be_immutable
class ConfirmRequestBottomSheetProvider extends ChangeNotifier {ConfirmRequestBottomSheetModel confirmRequestBottomSheetModelObj = ConfirmRequestBottomSheetModel();

@override void dispose() { super.dispose(); } 
 }
