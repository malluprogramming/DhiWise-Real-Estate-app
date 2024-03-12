import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/message_chat_model.dart';/// A provider class for the MessageChatScreen.
///
/// This provider manages the state of the MessageChatScreen, including the
/// current messageChatModelObj

// ignore_for_file: must_be_immutable
class MessageChatProvider extends ChangeNotifier {TextEditingController typeMessageController = TextEditingController();

MessageChatModel messageChatModelObj = MessageChatModel();

@override void dispose() { super.dispose(); typeMessageController.dispose(); } 
 }
