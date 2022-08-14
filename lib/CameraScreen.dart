import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/CameraPreview.dart';

// 撮影画面
class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor, // テーマを適用
        elevation: .6,
        // // 戻りアイコン
        // leading: Icon(Icons.arrow_back),
        // タイトルテキスト
        title: Text(
          'カメラ',
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
                  color: Colors.black,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => CameraPreview()
                      )
                    );
                  }, // 投稿ボタンを押したときの処理
                  child: Text('撮影'),
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
