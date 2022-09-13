import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ImgApp());
}

class ImgApp extends StatelessWidget {
  const ImgApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResizePage(),
    );
  }
}

class ResizePage extends StatelessWidget {
  const ResizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('How to Resize Images'),
          backgroundColor: Color(0xffe55586),
        ),
        body: Center(
            // Enabling the Image Frame
            child: Container(
                color: Colors
                    .indigo, // To see the difference between the image's original size and the frame
                height: 550,
                width: 300,

                // Uploading the Image from Assets
                child: Image.asset(
                  'images/pexels.jpg',

                  // Resizing the Image to the Frame Size
                  fit: BoxFit.cover,
                  // Alternatively, you can also try the following methods to reseize the image
                  //fit: BoxFit.fitWidth,
                  //fit: BoxFit.fitHeight,
                  //fit: BoxFit.scaledown,
                  //fit: BoxFit.fit,                   //
                ))));
  }
}
