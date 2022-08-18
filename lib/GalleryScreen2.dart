import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_memoria/Detail.dart';
import 'package:image_picker/image_picker.dart';

class GalleryScreen2 extends StatefulWidget {
  const GalleryScreen2({Key? key}) : super(key: key);
  @override
  _GalleryScreen2State createState() => _GalleryScreen2State();
}

class _GalleryScreen2State extends State {
  File? image;
  final picker = ImagePicker();

  // アルバムから画像の取得
  Future getImage() async {
    final XFile? _image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (_image != null) {
        image = File(_image.path);
      }
    });
  }

  // カメラ起動
  Future openCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画像選択'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // メイン画像（選択画像）
              Expanded(
                flex: 8, // 割合(画面比率)
                child: Center(
                  child: Container(
                    // color: Colors.red,
                    child: image == null
                        ? const Text('画像がありません')
                        : Image.file(image!, fit: BoxFit.cover),
                  ),
                ),
              ),

              if (image == null)
                // アイコン
                Expanded(
                  flex: 2, // 割合(画面比率)
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: FloatingActionButton(
                          onPressed: openCamera,
                          child: Icon(Icons.camera_alt_outlined),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: FloatingActionButton(
                          onPressed: getImage,
                          child: Icon(Icons.photo),
                        ),
                      ),
                    ],
                  ),
                )
              else
                Expanded(
                  flex: 2, // 割合(画面比率)
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Detail()
                                )
                            );
                          },
                          child: Icon(
                            Icons.check_circle_outline,
                            size: 35,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GalleryScreen2()
                                )
                            );
                          },
                          child: Icon(
                            Icons.backspace_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
