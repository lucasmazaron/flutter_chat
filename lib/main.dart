import 'package:chat/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());

  Firestore.instance.collection('mensagens').snapshots().listen((dado) {
    dado.documents.forEach((element) {
      print(element.data);
    });
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        iconTheme: IconThemeData(
          color: Colors.orange
        )
      ),
      home: ChatScreen(),
    );
  }
}