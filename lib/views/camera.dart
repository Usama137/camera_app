import 'package:flutter/material.dart';

import 'package:camera/camera.dart';

class TakePictureScreen extends StatefulWidget {
  final CameraDescription camera;

  const TakePictureScreen({
    Key key,
    @required this.camera,
  }) : super(key: key);



  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  String path;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        // Wait until the controller is initialized before displaying the
        // camera preview. Use a FutureBuilder to display a loading spinner
        // until the controller has finished initializing.
        body: Stack(
          children: [
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the Future is complete, display the preview.
                 // return CameraPreview(_controller);
                  
                  return CameraPreview(_controller);
                } else {
                  // Otherwise, display a loading indicator.
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              title: Row(
                children: [
                  Icon(Icons.settings, size: 35,),
                  Spacer(),
                  Icon(Icons.flash_off, size: 35,),
                  Spacer(),
                  Icon(Icons.clear, size: 35,),
                ],
              ),
            ),
            Positioned(
              bottom: 180,
              right: 75,
              child: Row(
                children: [

                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      child: Image(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        image:
                        AssetImage('images/OriginalonTransparentLogo.png'),
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(width: 12,),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(30)),
                      child: Image(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        image:
                        AssetImage('images/OriginalonTransparentLogo.png'),
                      ),
                    ),
                    onTap: () {},
                  ),

                  SizedBox(width: 12,),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      child: Image(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        image:
                        AssetImage('images/OriginalonTransparentLogo.png'),
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(width: 12,),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      child: Image(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        image:
                        AssetImage('images/OriginalonTransparentLogo.png'),
                      ),
                    ),
                    onTap: () {},
                  ),

                ],
              ),
            ),
            Positioned(
                bottom: 80,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          image:
                          AssetImage('images/OriginalonTransparentLogo.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(width: 20,),

                    InkWell(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          image:
                          AssetImage('images/OriginalonTransparentLogo.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(width: 20,),

                    InkWell(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(40)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          image:
                          AssetImage('images/OriginalonTransparentLogo.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(width: 20,),

                    InkWell(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          image:
                          AssetImage('images/OriginalonTransparentLogo.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(width: 20,),

                    InkWell(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          image:
                          AssetImage('images/OriginalonTransparentLogo.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                  ],
                )),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 68,
                width: double.infinity,

                decoration: BoxDecoration(
                    color: Colors.black
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(

                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        height: 50,
                        width: 50,
                        child:  Image(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          image:
                          AssetImage('images/OriginalonTransparentLogo.png'),
                        ),

                      ),
                    ),

                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.camera_front_rounded, size: 30,),
                    )


                  ],
                ),

              ),
            )
          ],
        ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.camera_alt),
//        // Provide an onPressed callback.
//        onPressed: () async {
//          // Take the Picture in a try / catch block. If anything goes wrong,
//          // catch the error.
//          try {
//            // Ensure that the camera is initialized.
//            await _initializeControllerFuture;
//
//            // Attempt to take a picture and get the file `image`
//            // where it was saved.
//            final image = await _controller.takePicture(path);
//
//            // If the picture was taken, display it on a new screen.
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                builder: (context) => DisplayPictureScreen(
//                  // Pass the automatically generated path to
//                  // the DisplayPictureScreen widget.
//                 // imagePath: image?.path,
//                ),
//              ),
//            );
//          } catch (e) {
//            // If an error occurs, log the error to the console.
//            print(e);
//          }
//        },
//      ),
      ),
    );
  }
}