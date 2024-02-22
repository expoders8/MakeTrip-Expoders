// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

// import '../constant/color_constant.dart';

// class LoaderX {
//   static show(BuildContext context, size) {
//     return Loader.show(context,
//         progressIndicator: SpinnerX(
//           spinnerSize: size,
//         ),
//         overlayColor: Colors.white30);
//   }

//   static hide() {
//     return Loader.hide();
//   }
// }

// class SpinnerX extends StatelessWidget {
//   final double spinnerSize;
//   const SpinnerX({Key? key, required this.spinnerSize}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => Future.value(false),
//       child: Center(
//         child: SpinKitSpinningLines(
//           size: spinnerSize,
//           color: kBlackColor,
//         ),
//       ),
//     );
//   }
// }

// class LoaderUtils {
//   static showLoader() {
//     return const Center(
//       child: SpinKitSpinningLines(
//         size: 50.0,
//         color: kBlackColor,
//       ),
//     );
//   }
// }
