import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class CameraApp extends StatefulWidget{
@override
State<StatefulWidget> createState() {
return new CameraState();
}
}
class CameraState extends State<CameraApp>{

  File _image;

  Future getImage(bool iscamera) async{

    File image;
    if(iscamera){
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image;
      
    });
  }
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('Image Picker'), backgroundColor: Colors.black ),
        body: Center(
         child: Column(
              children: <Widget>[
                Text("Upload image from gallery",textAlign: TextAlign.center,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(fontWeight: FontWeight.bold),),
                IconButton(
                  icon: Icon(Icons.insert_drive_file),
                  onPressed: (){
                    getImage(false);
                  },
                ),
                SizedBox(height: 10.0,),
                Text("Upload image from Camera",textAlign: TextAlign.center,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(fontWeight: FontWeight.bold),),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: (){
                    getImage(true);
                  },
                ),

                _image == null? Container() : Image.file(_image, height: 300.0, width: 300.0,),
              ],
          ),
      ),
      )
    );
  }
}