import 'package:real_estate/widgets/app_bar/custom_app_bar.dart';import 'package:real_estate/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:real_estate/widgets/app_bar/appbar_subtitle_two.dart';import 'package:real_estate/widgets/custom_elevated_button.dart';import 'models/notification_empty_states_model.dart';import 'package:flutter/material.dart';import 'package:real_estate/core/app_export.dart';import 'provider/notification_empty_states_provider.dart';class NotificationEmptyStatesScreen extends StatefulWidget {const NotificationEmptyStatesScreen({Key? key}) : super(key: key);

@override NotificationEmptyStatesScreenState createState() =>  NotificationEmptyStatesScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => NotificationEmptyStatesProvider(), child: NotificationEmptyStatesScreen()); } 
 }
class NotificationEmptyStatesScreenState extends State<NotificationEmptyStatesScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 41.h, top: 100.v, right: 41.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgMailNotification, height: 204.v, width: 255.h), SizedBox(height: 31.v), Text("msg_no_notifications".tr, style: theme.textTheme.titleLarge), SizedBox(height: 9.v), SizedBox(width: 292.h, child: Text("msg_no_notification".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))), SizedBox(height: 21.v), CustomElevatedButton(height: 45.v, text: "msg_notifications_settings".tr, margin: EdgeInsets.only(left: 37.h, right: 36.h), onPressed: () {onTapNotificationsSettings(context);}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_notification".tr), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the homeContainerScreen when the action is triggered.
onTapNotificationsSettings(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
 }
