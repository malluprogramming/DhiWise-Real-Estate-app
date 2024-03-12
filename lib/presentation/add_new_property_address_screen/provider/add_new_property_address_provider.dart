import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/add_new_property_address_model.dart';/// A provider class for the AddNewPropertyAddressScreen.
///
/// This provider manages the state of the AddNewPropertyAddressScreen, including the
/// current addNewPropertyAddressModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyAddressProvider extends ChangeNotifier {TextEditingController addressController = TextEditingController();

TextEditingController inputFieldsController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

AddNewPropertyAddressModel addNewPropertyAddressModelObj = AddNewPropertyAddressModel();

@override void dispose() { super.dispose(); addressController.dispose(); inputFieldsController.dispose(); nameController.dispose(); zipcodeController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewPropertyAddressModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
