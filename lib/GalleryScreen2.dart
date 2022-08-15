import 'dart:io';

import 'package:flutter/material.dart';
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
      body: Center(
        child: image == null
            ? const Text('画像がありません')
            : Image.file(image!, fit: BoxFit.cover),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // verticalDirection: VerticalDirection.up,
        children: <Widget>[
          FloatingActionButton(
            onPressed: openCamera,
            child: Icon(Icons.camera_alt_outlined),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: FloatingActionButton(
              onPressed: getImage,
              child: Icon(Icons.photo),
            ),
          ),
        ],
      ),
    );
  }
}

Text showText(image) {
  if(image) {
    return Text('MainAxisAlignment.center');
  } else {
    return Text('MainAxisAlignment.end');
  }
}