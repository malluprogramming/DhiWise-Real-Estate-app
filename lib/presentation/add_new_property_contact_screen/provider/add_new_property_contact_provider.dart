import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/add_new_property_contact_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the AddNewPropertyContactScreen.
///
/// This provider manages the state of the AddNewPropertyContactScreen, including the
/// current addNewPropertyContactModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyContactProvider extends ChangeNotifier {TextEditingController phoneNumberController = TextEditingController();

AddNewPropertyContactModel addNewPropertyContactModelObj = AddNewPropertyContactModel();

Country? selectedCountry;

@override void dispose() { super.dispose(); phoneNumberController.dispose(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
 }
