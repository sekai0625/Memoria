import 'package:flutter/material.dart';
import 'Detail.dart';

// 撮影画面
class CameraPreview extends StatelessWidget {
  const CameraPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor, // テーマを適用
        elevation: .6,
        // タイトルテキスト
        title: Text(
          'カメラ',
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
        // Container = <div>
        child: Container(
          // color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // カラムコンテツを画面中央に配置
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/present.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  }, // 投稿ボタンを押したときの処理
                  child: Text('取り直し'),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_rounded), label: 'カメラ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album), label: 'ギャラリー'),
        ],
      ),
    );
  }
}
