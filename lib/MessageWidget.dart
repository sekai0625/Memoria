import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/ChatScreen.dart';

// ユーザ一覧の画面
class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext) {
                return ChatScreen();
              })
            );
          },
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/grandmother.png'), 
          ),
          title: Text("おばあちゃん"),
          trailing: Text('3分前'),
          subtitle: Text('写真を投稿してメッセージを読もう！'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/grandfather.png'), 
          ),
          title: Text("おじいちゃん"),
          trailing: Text('1日前'),
          subtitle: Text('メッセージ新着'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/mother.png'), 
          ),
          title: Text("ママ"),
          trailing: Text('3日前'),
          subtitle: Text('ありがとう！'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/father.png'), 
          ),
          title: Text("パパ"),
          trailing: Text('1ヶ月前'),
          subtitle: Text('頑張れ'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/yuki.png'), 
          ),
          title: Text("ゆうき"),
          trailing: Text('2ヶ月前'),
          subtitle: Text('やるやん'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/yuto.png'), 
          ),
          title: Text("ゆうと"),
          trailing: Text('2ヶ月前'),
          subtitle: Text('ゆうとだよ'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/kenshin.png'), 
          ),
          title: Text("けんしん"),
          trailing: Text('3ヶ月前'),
          subtitle: Text('ヒカキン見てみよっかな～'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/yusaku.png'), 
          ),
          title: Text("ゆうさく"),
          trailing: Text('4ヶ月前'),
          subtitle: Text('エペしよ！'),
        ), 
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/grandmother.png'), 
          ),
          title: Text("おばあちゃん"),
          trailing: Text('3分前'),
          subtitle: Text('写真を投稿してメッセージを読もう！'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
          leading: ClipOval( // 画像を丸く切り取る
            child: Image.asset('assets/img/grandfather.png'), 
          ),
          title: Text("おじいちゃん"),
          trailing: Text('1日前'),
          subtitle: Text('メッセージ新着'),
        )
      ],
    );
  }
}
