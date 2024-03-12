import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/confirm_request_model.dart';/// A provider class for the ConfirmRequestScreen.
///
/// This provider manages the state of the ConfirmRequestScreen, including the
/// current confirmRequestModelObj

// ignore_for_file: must_be_immutable
class ConfirmRequestProvider extends ChangeNotifier {ConfirmRequestModel confirmRequestModelObj = ConfirmRequestModel();

@override void dispose() { super.dispose(); } 
 }
