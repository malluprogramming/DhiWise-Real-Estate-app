import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/favorite_model.dart';/// A provider class for the FavoriteScreen.
///
/// This provider manages the state of the FavoriteScreen, including the
/// current favoriteModelObj

// ignore_for_file: must_be_immutable
class FavoriteProvider extends ChangeNotifier {FavoriteModel favoriteModelObj = FavoriteModel();

@override void dispose() { super.dispose(); } 
 }
