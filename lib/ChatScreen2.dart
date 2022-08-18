import 'package:flutter/material.dart';
// import 'package:flutter_application_memoria/GalleryScreen.dart';
import 'package:flutter_application_memoria/GalleryScreen2.dart';
import 'PhotoScreen.dart';

// トーク画面
class ChatScreen2 extends StatelessWidget {
  const ChatScreen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor, // テーマを適用
        elevation: .6, // ウィジェットが浮いているような影を付ける
        centerTitle: true, // 中央寄せ
        title: Text(
          'おばあちゃん',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                // color: Colors.red,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/cork_board.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  // symmetric: 名前付き引数で指定した軸（x軸、y軸）の両側に余白
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      LetterBox(context, _screenSize),
                      // RightComment(),
                      // LeftComent(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 通知
  Padding LetterBox(context, _screenSize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0), // Textの下に余白
      child: Row(
        children: <Widget>[
          // アイコンを丸く
          // CircleAvatar(
          //   child: Image.asset('assets/img/grandmother.png'),
          // ),
          // Flexible: 子要素のサイズが親の描画領域より小さければ変化しない, それ以外はExpandedと同じ
          Flexible(
            child: Container(
              width: _screenSize.width * 0.7,
              // 付箋（通知エリア）
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/fusen2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                  children: <Widget>[
                    // 押しピン
                    Image.asset('assets/img/pin.png'),
                    // メッセージ
                    Text(
                      maxLines: 3,
                      "プレゼントを投稿してメッセージカードを確認しよう！",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryScreen2()));
                        }, // 投稿ボタンを押したときの処理
                        child: Text('投稿'),
                      ),
                    ),
                    // 投稿ボタン
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}