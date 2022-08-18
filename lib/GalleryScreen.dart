import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/CameraScreen.dart';
import 'Detail.dart';

// 写真選択 画面
class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imgList = [
      imgItem('present_box'),
    ];

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
        child: Column(
          children: <Widget>[
            // メイン画像（選択画像）
            Expanded(
              flex: 5, // 割合(画面比率)
              child: Container(
                child: Image.asset('assets/img/present.jpg'),
              ),
            ),

            // ギャラリー
            Expanded(
              flex: 5, // 割合
              child: Container(
                // color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    // ギャラリー、カメラアイコン
                    Container(
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, // 両端寄せ
                        children: <Widget>[
                          // ギャラリー
                          Container(
                            color: Colors.blue,
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'ギャラリー',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          // カメラアイコン
                          Container(
                            color: Colors.green,
                            margin: EdgeInsets.only(right: 20, top: 7),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CameraScreen()));
                              },
                              icon: Icon(
                                Icons.camera_alt_outlined,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ギャラリーコンテンツ
                    Container(
                      color: Colors.purple,
                      child: SingleChildScrollView(
                        
                      ),
                      // child: GridView.count(
                      //   crossAxisCount: 3,
                      //   children: imgList,
                      // ),
                    ),  
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imgItem(String name) {
  var image = "assets/img/" + name + ".png";
  return Container(
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
  );
}
