import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
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
