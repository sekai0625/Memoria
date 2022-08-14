import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/GalleryScreen.dart';
import 'PhotoScreen.dart';

// トーク画面
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 32.0,
                ),
                child: Column(
                  children: <Widget>[
                    LetterBox(context),
                    RightComment(),
                    LeftComent(),
                    // RightComment(),
                    // LeftComent(),
                  ],
                )
              ),
            ),
            textInputWidget()
          ],
        )
      ),
    );
  }

  Padding LetterBox(context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0), // Textの下に余白
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Image.asset('assets/img/grandmother.png'),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 233, 233, 233),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      maxLines: 3,
                      "プレゼントを投稿してメッセージカードを確認しよう！", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GalleryScreen()
                          )
                        );
                      }, // 投稿ボタンを押したときの処理
                      child: Text('投稿'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding LeftComent() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Image.asset('assets/img/grandmother.png'),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 233, 233, 233)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("また遊びにおいで"),
            ),
          ),
        ],
      ),
    );
  }

  Padding RightComment() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                const Color.fromARGB(255, 108, 132, 235),
                const Color.fromARGB(250, 132, 199, 250),
              ],
              stops: const [
                0.0,
                1.0,
              ],
            ),
            color: Colors.redAccent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('おいおい'),
          ),
        ),
      ),
    );
  }

  Container textInputWidget() {
    return Container(
      // height: 68,
      child: Row(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
          iconSize: 28,
          color: Colors.black54,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.photo_album_outlined),
          iconSize: 28,
          color: Colors.black54,
        ),
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(border: InputBorder.none),
              )),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.mic),
          iconSize: 28,
          color: Colors.black54,
        ),
      ]),
    );
  }
}
