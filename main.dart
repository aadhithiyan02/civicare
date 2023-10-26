// // // import 'package:flutter/material.dart';
// // // import 'package:camera/camera.dart';
// // // import 'dart:io';
// // // import 'package:logger/logger.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   final cameras = await availableCameras();
// // //   if (cameras.isNotEmpty) {
// // //     final firstCamera = cameras.first;
// // //     runApp(MyApp(camera: firstCamera));
// // //   } else {
// // //     final logger = Logger();
// // //     logger.e("No cameras available on this device.");
// // //   }
// // // }

// // // class MyApp extends StatelessWidget {
// // //   final CameraDescription camera;

// // //   const MyApp({Key? key, required this.camera}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: CameraScreen(camera: camera),
// // //     );
// // //   }
// // // }

// // // class CameraScreen extends StatefulWidget {
// // //   final CameraDescription camera;

// // //   const CameraScreen({Key? key, required this.camera}) : super(key: key);

// // //   @override
// // //   // ignore: library_private_types_in_public_api
// // //   _CameraScreenState createState() => _CameraScreenState();
// // // }

// // // class _CameraScreenState extends State<CameraScreen> {
// // //   late CameraController _controller;
// // //   late Future<void> _initializeControllerFuture;
// // //   File? _imageFile;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _controller = CameraController(widget.camera, ResolutionPreset.medium);
// // //     _initializeControllerFuture = _controller.initialize();
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _controller.dispose();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Camera App'),
// // //       ),
// // //       body: FutureBuilder<void>(
// // //         future: _initializeControllerFuture,
// // //         builder: (context, snapshot) {
// // //           if (snapshot.connectionState == ConnectionState.done) {
// // //             return Column(
// // //               children: <Widget>[
// // //                 Expanded(
// // //                   child: CameraPreview(_controller),
// // //                 ),
// // //                 if (_imageFile != null)
// // //                   Image.file(_imageFile!),
// // //               ],
// // //             );
// // //           } else {
// // //             return const Center(child: CircularProgressIndicator());
// // //           }
// // //         },
// // //       ),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: () async {
// // //           try {
// // //             await _initializeControllerFuture;
// // //             final image = await _controller.takePicture();
// // //             setState(() {
// // //               _imageFile = File(image.path);
// // //             });
// // //           } catch (e) {
// // //             final logger = Logger();
// // //             logger.e("Error: $e");
// // //           }
// // //         },
// // //         child: const Icon(Icons.camera),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:camera/camera.dart';
// // import 'dart:io';
// // import 'package:logger/logger.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   final cameras = await availableCameras();
// //   if (cameras.isNotEmpty) {
// //     final firstCamera = cameras.first;
// //     runApp(MyApp(camera: firstCamera));
// //   } else {
// //     final logger = Logger();
// //     logger.e("No cameras available on this device.");
// //   }
// // }

// // class MyApp extends StatelessWidget {
// //   final CameraDescription camera;

// //   const MyApp({Key? key, required this.camera}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: CameraScreen(camera: camera),
// //     );
// //   }
// // }

// // class CameraScreen extends StatefulWidget {
// //   final CameraDescription camera;

// //   const CameraScreen({Key? key, required this.camera}) : super(key: key);

// //   @override
// //   _CameraScreenState createState() => _CameraScreenState();
// // }

// // class _CameraScreenState extends State<CameraScreen> {
// //   late CameraController _controller;
// //   late Future<void> _initializeControllerFuture;
// //   File? _imageFile;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = CameraController(widget.camera, ResolutionPreset.medium);
// //     _initializeControllerFuture = _controller.initialize();
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   Future<void> _saveImageAndExit() async {
// //     if (_imageFile != null) {
// //       final isSave = await showDialog(
// //         context: context,
// //         builder: (BuildContext context) {
// //           return AlertDialog(
// //             title: Text('Save or Discard Image?'),
// //             content: Text('Do you want to save the image?'),
// //             actions: <Widget>[
// //               TextButton(
// //                 child: Text('Discard'),
// //                 onPressed: () {
// //                   Navigator.of(context).pop(false);
// //                 },
// //               ),
// //               TextButton(
// //                 child: Text('Save'),
// //                 onPressed: () {
// //                   Navigator.of(context).pop(true);
// //                 },
// //               ),
// //             ],
// //           );
// //         },
// //       );

// //       if (isSave == true) {
// //         // Save the image to the device.
// //         // Implement the saving logic based on your requirements.

// //         // After saving, you can navigate back to the previous screen or perform any other action.
// //       } else {
// //         setState(() {
// //           _imageFile = null;
// //         });
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Camera App'),
// //       ),
// //       body: FutureBuilder<void>(
// //         future: _initializeControllerFuture,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.done) {
// //             return Column(
// //               children: <Widget>[
// //                 Expanded(
// //                   child: CameraPreview(_controller),
// //                 ),
// //                 if (_imageFile != null) Image.file(_imageFile!),
// //               ],
// //             );
// //           } else {
// //             return const Center(child: CircularProgressIndicator());
// //           }
// //         },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () async {
// //           try {
// //             await _initializeControllerFuture;
// //             final image = await _controller.takePicture();
// //             setState(() {
// //               _imageFile = File(image.path);
// //             });

// //             await _saveImageAndExit();
// //           } catch (e) {
// //             final logger = Logger();
// //             logger.e("Error: $e");
// //           }
// //         },
// //         child: const Icon(Icons.camera),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'dart:io';
// import 'package:logger/logger.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final cameras = await availableCameras();
//   if (cameras.isNotEmpty) {
//     final firstCamera = cameras.first;
//     runApp(MyApp(camera: firstCamera));
//   } else {
//     final logger = Logger();
//     logger.e("No cameras available on this device.");
//   }
// }

// class MyApp extends StatelessWidget {
//   final CameraDescription camera;

//   const MyApp({Key? key, required this.camera}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CameraScreen(camera: camera),
//     );
//   }
// }

// class CameraScreen extends StatefulWidget {
//   final CameraDescription camera;

//   const CameraScreen({Key? key, required this.camera}) : super(key: key);

//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   File? _imageFile;
//   bool _isPreviewing = true; // A flag to indicate if we're showing the camera preview

//   @override
//   void initState() {
//     super.initState();
//     _controller = CameraController(widget.camera, ResolutionPreset.medium);
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   Future<void> _saveImageAndExit() async {
//     if (_imageFile != null) {
//       final isSave = await showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Save or Discard Image?'),
//             content: Text('Do you want to save the image?'),
//             actions: <Widget>[
//               TextButton(
//                 child: Text('Discard'),
//                 onPressed: () {
//                   Navigator.of(context).pop(false);
//                 },
//               ),
//               TextButton(
//                 child: Text('Save'),
//                 onPressed: () {
//                   Navigator.of(context).pop(true);
//                 },
//               ),
//             ],
//           );
//         },
//       );

//       if (isSave == true) {
//         // Save the image to the device.
//         // Implement the saving logic based on your requirements.

//         // After saving, exit the camera and show the saved image.
//         setState(() {
//           _isPreviewing = false;
//         });
//       } else {
//         setState(() {
//           _imageFile = null;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Camera App'),
//       ),
//       body: _isPreviewing
//           ? FutureBuilder<void>(
//               future: _initializeControllerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return Column(
//                     children: <Widget>[
//                       Expanded(
//                         child: CameraPreview(_controller),
//                       ),
//                       if (_imageFile != null) Image.file(_imageFile!),
//                     ],
//                   );
//                 } else {
//                   return const Center(child: CircularProgressIndicator());
//                 }
//               },
//             )
//           : Center(
//               child: _imageFile != null
//                   ? Image.file(_imageFile!, width: 300)
//                   : Text("No image to display"),
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           if (_isPreviewing) {
//             try {
//               await _initializeControllerFuture;
//               final image = await _controller.takePicture();
//               setState(() {
//                 _imageFile = File(image.path);
//               });
//               await _saveImageAndExit();
//             } catch (e) {
//               final logger = Logger();
//               logger.e("Error: $e");
//             }
//           } else {
//             setState(() {
//               _isPreviewing = true;
//             });
//           }
//         },
//         child: Icon(_isPreviewing ? Icons.camera : Icons.refresh),
//       ),
//     );
//   }
// }

//with camera button on

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';
import 'package:logger/logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  if (cameras.isNotEmpty) {
    final firstCamera = cameras.first;
    runApp(MyApp(camera: firstCamera));
  } else {
    final logger = Logger();
    logger.e("No cameras available on this device.");
  }
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraScreen(camera: camera),
    );
  }
}

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;

  const CameraScreen({Key? key, required this.camera}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  File? _imageFile;
  bool _isCameraOn = false;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _saveImageAndExit() async {
    if (_imageFile != null) {
      final isSave = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Save or Discard Image?'),
            content: Text('Do you want to save the image?'),
            actions: <Widget>[
              TextButton(
                child: Text('Discard'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: Text('Save'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        },
      );

      if (isSave == true) {
        // Save the image to the device.
        // Implement the saving logic based on your requirements.

        // After saving, exit the camera and show the saved image.
        setState(() {
          _isCameraOn = false;
        });
      } else {
        setState(() {
          _imageFile = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera App'),
      ),
      body: _isCameraOn
          ? FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                    children: <Widget>[
                      Expanded(
                        child: CameraPreview(_controller),
                      ),
                      if (_imageFile != null) Image.file(_imageFile!),
                    ],
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )
          : Center(
              child: _imageFile != null
                  ? Image.file(_imageFile!, width: 300)
                  : Text("No image to display"),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_isCameraOn) {
            try {
              await _initializeControllerFuture;
              final image = await _controller.takePicture();
              setState(() {
                _imageFile = File(image.path);
              });
              await _saveImageAndExit();
            } catch (e) {
              final logger = Logger();
              logger.e("Error: $e");
            }
          } else {
            setState(() {
              _isCameraOn = true;
            });
          }
        },
        child: Icon(_isCameraOn ? Icons.camera : Icons.refresh),
      ),
    );
  }
}
