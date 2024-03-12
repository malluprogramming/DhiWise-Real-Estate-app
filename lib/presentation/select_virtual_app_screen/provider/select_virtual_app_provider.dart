import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/select_virtual_app_model.dart';import '../models/selectvirtualapp_item_model.dart';/// A provider class for the SelectVirtualAppScreen.
///
/// This provider manages the state of the SelectVirtualAppScreen, including the
/// current selectVirtualAppModelObj

// ignore_for_file: must_be_immutable
class SelectVirtualAppProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

SelectVirtualAppModel selectVirtualAppModelObj = SelectVirtualAppModel();

@override void dispose() { super.dispose(); emailController.dispose(); } 
 }
