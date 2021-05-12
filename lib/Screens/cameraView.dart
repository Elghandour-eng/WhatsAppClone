import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

List<CameraDescription> cameras = [];

class CameraViewWidget extends StatefulWidget {
  @override
  _CameraViewWidgetState createState() => _CameraViewWidgetState();
}

class _CameraViewWidgetState extends State<CameraViewWidget> {
  CameraController _controller;

  Future<void> cameraValue;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(cameras[0], ResolutionPreset.high);
    cameraValue = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_controller);
              } else {
                return Center(
                  child: Text('Loading ...'),
                );
              }
            }),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.black,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      takePhoto();
                    },
                    child: Icon(
                      Icons.camera,
                      color: Colors.white,
                      size: 70,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }

  void takePhoto() async {
    final path =
        join((await getTemporaryDirectory()).path, '${DateTime.now()}.png');
    await _controller.takePicture(path);
    print(path);
    print(path);
    print(path);
    print(path);
    print(path);

    print(path);
  }
}
