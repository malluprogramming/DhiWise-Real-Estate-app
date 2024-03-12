import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/faqs_get_help_model.dart';/// A provider class for the FaqsGetHelpScreen.
///
/// This provider manages the state of the FaqsGetHelpScreen, including the
/// current faqsGetHelpModelObj

// ignore_for_file: must_be_immutable
class FaqsGetHelpProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

FaqsGetHelpModel faqsGetHelpModelObj = FaqsGetHelpModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
