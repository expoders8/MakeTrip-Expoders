import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class InAppWebViewWidget extends StatefulWidget {
  const InAppWebViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<InAppWebViewWidget> createState() => _InAppWebViewWidgetState();
}

class _InAppWebViewWidgetState extends State<InAppWebViewWidget> {
  File? imageFile;
  File? imageCrop;
  bool value = false;
  bool isLoading = true;
  bool isRotated = false;
  File? imageCaptureFile;
  bool wantToGoBack = false;
  String url = '';
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;
  final Completer<JsAlertRequest> alertCompleter = Completer<JsAlertRequest>();

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
      useOnDownloadStart: true,
      supportZoom: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
      displayZoomControls: false,
    ),
    ios: IOSInAppWebViewOptions(
      allowsInlineMediaPlayback: true,
      pageZoom: 0,
    ),
  );

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.1,
        ),
        body: WillPopScope(
          onWillPop: () => refreshAndGetUserProfile(),
          child: Stack(
            children: [
              InAppWebView(
                key: webViewKey,
                initialUrlRequest: URLRequest(
                    url: Uri.parse(
                        "https://maketrip.lemonsqueezy.com/checkout/buy/30172ca8-2f2d-46bc-9a81-2dd199cc0b5a")),
                onWebViewCreated: (controller) {
                  webViewController = controller;

                  controller.addJavaScriptHandler(
                    handlerName: "stripeCallback",
                    callback: (args) {
                      refreshAndGetUserProfile();
                    },
                  );
                },
                onLoadError: (controller, url, code, message) {
                  // showErrorDialog();
                },
                onLoadHttpError: (controller, url, code, message) {
                  // showErrorDialog();
                },
                onLoadStop: ((controller, url) {
                  setState(() {
                    isLoading = false;
                  });
                }),
              ),
              isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const Stack(),
            ],
          ),
        ),
      ),
    );
  }

  // Future<bool> _goBack(BuildContext context, templateId, userTemplateId) async {
  //   webViewController
  //       ?.evaluateJavascript(source: 'window.bottomSheetClose ()')
  //       .then((value) => {
  //             if (value != true)
  //               {
  //                 // if (templateId != 0 && userTemplateId == 0)
  //                 //   {templateExitDialog(context, templateId, userTemplateId)}
  //                 // else if (templateId == 0 && userTemplateId != 0)
  //                 //   {
  //                 //     userTemplateExitDialog(
  //                 //         context, templateId, userTemplateId)
  //                 //   }
  //                 // else
  //                 //   {templateExitDialog(context, templateId, userTemplateId)}
  //               }
  //           });
  //   return Future.value(wantToGoBack);
  // }

  navigateBack(BuildContext context) {
    Navigator.pop(context, 0);
    Navigator.pop(context, 1);
    wantToGoBack = true;
    webViewController?.goBack();
  }

  refreshAndGetUserProfile() async {
    Get.back();
  }
}
