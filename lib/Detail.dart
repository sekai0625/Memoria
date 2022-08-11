import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/ChatScreen.dart';

// 画像投稿画面
class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor, // テーマを適用
        elevation: .6,
        // タイトルテキスト
        title: Text(
          '新規投稿',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Detail()));
            },
            icon: Icon(Icons.check),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('assets/img/present.jpg'), // 投稿画像
            TitleArea(), // 商品名
            LinkArea(), // 商品の購入リンク
            DescriptionArea(), // 商品の詳細
            ComentArea(), // 投稿へのコメント
            ButtonArea(context), // 投稿ボタン
          ],
        ),
      ),
    );
  }

  // 商品名
  Widget TitleArea() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          // 商品名(タイトル)
          Container(
            child: Text(
              '商品名',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Color.fromARGB(255, 119, 119, 119)
              ),
            ),
          ),
          // 商品名
          Container(
            child: Text(
              'Nintendo Switch'
            ),
          ),
        ],
      ),
    );
  }

  // 商品の購入リンク
  Widget LinkArea() {
    return Container(
      child: Column(
        children: <Widget>[
          // 購入リンク(タイトル)
          Container(
              child: Text(
              '購入リンク',
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Color.fromARGB(255, 119, 119, 119)
              ),
            ),
          ),
          // 購入リンク
          Container(
            child: Text(
              'https://dev.classmethod.jp/articles/flutter_column_row_1/'
            ),
          ),
        ],
      ),
    );
  }

  // 商品の詳細
  Widget DescriptionArea() {
    return Container(
        child: Column(
          children: <Widget>[
          // 商品の詳細(タイトル)
          Container(
              child: Text(
              '商品の詳細',
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Color.fromARGB(255, 119, 119, 119)
              ),
            ),
          ),
          // 商品の詳細
          Container(
            child: Text(
              '楽しいをおすそわけ「テーブルモード」本体のスタンドを立てて、Joy-Conを分け合えば、外出先などテレビのない場所でも、画面をシェアして、対戦や協力プレイを楽しめます。'
            ),
          ),
        ],
      ),
    );
  }

  // 投稿へのコメント
  Widget ComentArea() {
    return Container(
        child: Column(
          children: <Widget>[
          // 投稿へのコメント(タイトル)
          Container(
              child: Text(
              'コメント',
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Color.fromARGB(255, 119, 119, 119)
              ),
            ),
          ),
          // コメント
          Container(
            child: Text(
              'おじいちゃんからもらった！'
            ),
          ),
        ],
      ),
    );
  }

  // 投稿ボタン
  Widget ButtonArea(context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => ChatScreen()
          ),
        );
      }, child: Text('投稿'),
    );
  }
}