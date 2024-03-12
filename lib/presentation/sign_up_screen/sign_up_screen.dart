import 'package:real_estate/widgets/app_bar/custom_app_bar.dart';import 'package:real_estate/core/utils/validation_functions.dart';import 'package:real_estate/widgets/custom_text_form_field.dart';import 'package:real_estate/widgets/custom_elevated_button.dart';import 'package:real_estate/widgets/custom_outlined_button.dart';import 'models/sign_up_model.dart';import 'package:flutter/material.dart';import 'package:real_estate/core/app_export.dart';import 'provider/sign_up_provider.dart';import 'package:real_estate/domain/googleauth/google_auth_helper.dart';import 'package:real_estate/domain/facebookauth/facebook_auth_helper.dart';class SignUpScreen extends StatefulWidget {const SignUpScreen({Key? key}) : super(key: key);

@override SignUpScreenState createState() =>  SignUpScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SignUpProvider(), child: SignUpScreen()); } 
 }

// ignore_for_file: must_be_immutable
class SignUpScreenState extends State<SignUpScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_create_an_account".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 40.v), _buildFullName(context), SizedBox(height: 16.v), _buildPhoneNumber(context), SizedBox(height: 16.v), _buildPassword(context), SizedBox(height: 24.v), _buildSignUp(context), SizedBox(height: 85.v), Text("msg_or_continue_with".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 24.v), _buildGoogle(context), SizedBox(height: 12.v), _buildFacebook(context), SizedBox(height: 27.v), Padding(padding: EdgeInsets.symmetric(horizontal: 21.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_you_already_have".tr, style: theme.textTheme.bodyLarge), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_sign_in".tr, style: CustomTextStyles.titleMediumPrimary)))])), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(title: Padding(padding: EdgeInsets.only(left: 24.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_create_a".tr, style: CustomTextStyles.headlineSmallff16161a), TextSpan(text: "lbl_vertex_account".tr, style: CustomTextStyles.headlineSmallff1786f9)]), textAlign: TextAlign.left))); } 
/// Section Widget
Widget _buildFullName(BuildContext context) { return Selector<SignUpProvider, TextEditingController?>(selector: (context, provider) => provider.fullNameController, builder: (context, fullNameController, child) {return CustomTextFormField(controller: fullNameController, hintText: "lbl_full_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildPhoneNumber(BuildContext context) { return Selector<SignUpProvider, TextEditingController?>(selector: (context, provider) => provider.phoneNumberController, builder: (context, phoneNumberController, child) {return CustomTextFormField(controller: phoneNumberController, hintText: "lbl_phone_number".tr, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;});}); } 
/// Section Widget
Widget _buildPassword(BuildContext context) { return Consumer<SignUpProvider>(builder: (context, provider, child) {return CustomTextFormField(controller: provider.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {provider.changePasswordVisibility();}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 49.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: provider.isShowPassword, contentPadding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v));}); } 
/// Section Widget
Widget _buildSignUp(BuildContext context) { return CustomElevatedButton(text: "lbl_sign_up".tr); } 
/// Section Widget
Widget _buildGoogle(BuildContext context) { return CustomOutlinedButton(text: "lbl_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapGoogle(context);}); } 
/// Section Widget
Widget _buildFacebook(BuildContext context) { return CustomOutlinedButton(text: "lbl_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapFacebook(context);}); } 
onTapGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
onTapFacebook(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
/// Navigates to the signInScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInScreen, ); } 
 }
