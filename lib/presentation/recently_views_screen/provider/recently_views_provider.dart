import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/recently_views_model.dart';/// A provider class for the RecentlyViewsScreen.
///
/// This provider manages the state of the RecentlyViewsScreen, including the
/// current recentlyViewsModelObj

// ignore_for_file: must_be_immutable
class RecentlyViewsProvider extends ChangeNotifier {RecentlyViewsModel recentlyViewsModelObj = RecentlyViewsModel();

@override void dispose() { super.dispose(); } 
 }
