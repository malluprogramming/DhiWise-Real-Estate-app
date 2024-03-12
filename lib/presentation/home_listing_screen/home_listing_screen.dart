import 'package:real_estate/presentation/home_page/home_page.dart';import 'package:real_estate/presentation/message_page/message_page.dart';import 'package:real_estate/presentation/home_search_page/home_search_page.dart';import 'package:real_estate/presentation/my_home_page/my_home_page.dart';import 'package:real_estate/presentation/profile_page/profile_page.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'dart:async';import 'package:real_estate/widgets/custom_bottom_bar.dart';import 'models/home_listing_model.dart';import 'package:flutter/material.dart';import 'package:real_estate/core/app_export.dart';import 'provider/home_listing_provider.dart';class HomeListingScreen extends StatefulWidget {const HomeListingScreen({Key? key}) : super(key: key);

@override HomeListingScreenState createState() =>  HomeListingScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeListingProvider(), child: HomeListingScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeListingScreenState extends State<HomeListingScreen> {Completer<GoogleMapController> googleMapController = Completer();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.homeListingSateliteScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: 693.v, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homePage: return HomePage.builder(context); case AppRoutes.messagePage: return MessagePage.builder(context); case AppRoutes.homeSearchPage: return HomeSearchPage.builder(context); case AppRoutes.myHomePage: return MyHomePage.builder(context); case AppRoutes.profilePage: return ProfilePage.builder(context); default: return DefaultWidget();} } 
 }
