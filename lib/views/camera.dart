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
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              title: Row(
                children: [
                  InkWell(
                    child: Icon(Icons.settings, size: 35,), onTap: ()
                  {
                    //implement function
                  },),
                  Spacer(),
                  InkWell(child: Icon(Icons.flash_off, size: 35,),
                  onTap: (){
                    //implement function
                  },),
                  Spacer(),
                  InkWell(child: Icon(Icons.clear, size: 35,),
                  onTap: (){
                    //implement function
                  },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 180,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          image:
                          AssetImage('images/subfashion_shopping.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          image:
                          AssetImage('images/subfashion_fitting.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(width: 20,),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          image:
                          AssetImage('images/subfood_recipe.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          image:
                          AssetImage('images/subfood_calories.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(width: 20,),

                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          image:
                          AssetImage('images/image.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Image(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          image:
                          AssetImage('images/subblind_navigation.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                  ],
                ),
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
                          AssetImage('images/fashionWhite.png'),
                        ),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 40,
                    ),
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
                          AssetImage('images/foodWhite.png'),
                        ),
                      ),
                      onTap: () {},
                    ),

                    SizedBox(
                      width: 40,
                    ),

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
                          AssetImage('images/blindAidWhite.png'),
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
                          AssetImage('images/foodWhite.png'),
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
            ),
          ],
        ),

      ),
    );
  }
}