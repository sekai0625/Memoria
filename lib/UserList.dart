import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/MessageWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: const MyHomePage(title: 'Flutter Demo Home'),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6, // ウィジェットが浮いているような影を付ける
        centerTitle: true, // 中央寄せ
        title: Text(
          'Memoria',
          style: TextStyle(color: Color.fromRGBO(255, 153, 153, 1)),
        ),
        actions: <Widget>[ // titleの後ろにwidgetを挿入したい場合はactions
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: MessageWidget(), // ユーザ一覧の画面のファイルの呼び出し
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: 'トーク'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'アカウント'
          ),
        ],
      ),
    );
  }
}

