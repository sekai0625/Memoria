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
        // actions: <Widget>[
        //   IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => Detail()));
        //     },
        //     icon: Icon(Icons.check),
        //   ),
        // ],
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SafeArea(
        // 表示サイズを超えたら縦スクロール
        child: SingleChildScrollView(
          child: Container(
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ImgArea(), // 投稿画像
              TitleArea(), // 商品名
              DescriptionArea(), // 商品の詳細
              LinkArea(), // 商品の購入リンク
              ComentArea(), // 投稿へのコメント
              ButtonArea(context), // 投稿ボタン
            ],
          ),
        ),
        ),
      ),
    );
  }

  // 画像
  Widget ImgArea() {
    return Container(
      // color: Colors.blue,
      margin: EdgeInsets.only(left: 10, top: 10),
      child: Column(
        children: <Widget>[
          // 投稿画像(タイトル)
          Container(
            width: double.infinity, // 横幅いっぱい
            // color: Colors.amber,
            margin: EdgeInsets.only(left: 7, bottom: 7),
            child: Text(
              '投稿画像',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 119, 119, 119)),
            ),
          ),
          // 投稿画像
          Container(
            child: SizedBox(
              height: 100,
              // 画像横並び
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      child: Image.asset('assets/img/present.jpg'),
                      width: 100,
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                    ),
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                    ),
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                    ),
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                    ),
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 商品名
  Widget TitleArea() {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 30),
      child: Column(
        children: <Widget>[
          // 商品名(タイトル)
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7),
            child: Text(
              '商品名',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 119, 119, 119)),
            ),
          ),
          // 商品名
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7, right: 7),
            child: TextFormField(
              // 初期値
              controller: TextEditingController(
                text: 'SOUNDPEATS Air3 ワイヤレスイヤホン',
              ),  //ここに初期値
            ),
          ),
        ],
      ),
    );
  }

  // 商品の購入リンク
  Widget LinkArea() {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 30),
      child: Column(
        children: <Widget>[
          // 購入リンク(タイトル)
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7),
            child: Text(
              '購入リンク',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 119, 119, 119)),
            ),
          ),
          // 購入リンク
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7, bottom: 7, right: 7),
            child: TextFormField(
              controller: TextEditingController(
                text: 'https://www.amazon.co.jp/',
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 商品の詳細
  Widget DescriptionArea() {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 30),
      child: Column(
        children: <Widget>[
          // 商品の詳細(タイトル)
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7),
            child: Text(
              '商品の詳細',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 119, 119, 119)),
            ),
          ),
          // 商品の詳細
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7, right: 7),
            child: TextFormField(
              maxLines: null, // 折り返し
              controller: TextEditingController(
                text: '最先端技術を小さいケースに凝縮し、従来のTrueAir2よりもっと小型にし、耳穴の小さい女性であっても無理なく装着でき、洋服のポケットに入れても膨らみを感じなく、持ち運びが更に便利になります。',
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 投稿へのコメント
  Widget ComentArea() {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 30),
      child: Column(
        children: <Widget>[
          // コメント(タイトル)
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7),
            child: Text(
              'コメント',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 119, 119, 119)),
            ),
          ),
          // コメント
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 7, bottom: 7, right: 7),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'コメント',
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 投稿ボタン
  Widget ButtonArea(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.pink[100], // background
        onPrimary: Colors.white, // foreground
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Text('投稿'),
    );
  }
}
