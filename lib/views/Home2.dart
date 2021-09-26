/*import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:happysave/views/Home.dart';
import 'package:http/http.dart' as http;

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class Home2 extends StatefulWidget {
  static String routeName = '/home2';

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: ImageCapture(),
    );
  }
}

class ImageCapture extends StatefulWidget {
  creteState() => _ImageCaptureState();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _ImageCaptureState extends State<ImageCapture> {
  File _imgeFile;

  get image => null;

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _imageFile = selected;
    });
  }

  void _clear(){
    setState(() => _imgeFile = null
      
    );
  }

  Future<void> _cropImage() async {
    File cropped = await ImageCropper.cropImage(
        sourcePath: _imageFile.path,
        toolbarColor: Color.purple,
        toolbarWidgetColor: Color.white,
        toolbarTitle: 'Crop It');

    setState(() {
      _imgeFile = cropped ?? _imgeFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icon.photo_camera),
              onPressed: ()=> _pickImage(ImageSource.camera),
              ),
            IconButton(
              icon: Icon(Icon.photo_library),
              onPressed: ()=> _pickImage(ImageSource.gallery),
              ),  
            ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          if ( _imgeFile != null) ...[

            image.file(_imgeFile),

            Row(
              children: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  child: Icon(Icon.crop),
                  onPressed: _cropImage,
                  ),
                // ignore: deprecated_member_use
                FlatButton(
                  child: Icon(Icon.refresh),
                  onPressed: _clear,
                  ),
              ],
            )
          Uploader(file: _imgeFile)
          
          ]

        ],
      ),
    );
  }
}

class _imageFile {
}
class Uploader extends StatefulWidget{
  final File file;

  Uploader({Key key, this.file}) : super (key: key);

  createState() => _UploaderState();
}

class _UploaderState extends State<Uploader>{
  final FirebaseStorage _storage = 
    FirebaseStorage(storageBucket: 'gs://happysave-8938a.appspot.com/');

  StorageUploadTask _uploadTask;

  void _startUpload() {
    String filePath = 'images/${DateTime.now()}.png';

    setState(() {
      _uploadTask =_storage.ref().child(filePath).putFile(widget.file);

    });
  }
 @override 
 Widget build(BuildContext context) {
   if (_uploadTask != null){
      stream: _uploadTask.events;
      // ignore: unnecessary_statements
      build:(context, snapshot) {
        var event = snapshot?.data?.snapshot;

        double progressPercent = event != null  
            ? event.bytesTransferred / event.totalByteCount
            : 0;
      return Column(

        children: [
          if(_uploadTask.isComplete)
             Text('data'),

          if(_uploadTask.isPaused)
            // ignore: deprecated_member_use
            FlatButton(
              child: Icon(Icon.play_arrow),
              onPressed: _uploadTask.resume,
              ),
           if(_uploadTask.isInProgress)
             // ignore: deprecated_member_use
             FlatButton(
              child: Icon(Icon.pause),
              onPressed: _uploadTask.pause,
              ),

              LinearProgressIndicator(value: progressPercent),
              Text(
                '${(progressPercent * 100).toStringAsFixed(2)} % '
              ),
           ],
         );      
      };
   }
 }
}*/
