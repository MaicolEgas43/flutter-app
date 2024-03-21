import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(bodyMessage: 'Hola Putos', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    //TODO Messagef ;
  }
}
