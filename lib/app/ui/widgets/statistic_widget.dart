import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:maketrip/app/ui/widgets/bookmark_button.dart';
import 'package:maketrip/app/ui/widgets/like_button.dart';
import 'package:maketrip/app/ui/widgets/seprator_widget.dart';

import '../../../config/constant/color_constant.dart';
import '../../../config/constant/font_constant.dart';

class StatisticWidget extends StatefulWidget {
  const StatisticWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatisticWidget> createState() => _StatisticWidgetState();
}

class _StatisticWidgetState extends State<StatisticWidget> {
  int percentage = 0;
  List userImage = [];
  double getPercentage = 0.0;
  String userData = "";
  String userId = "";
  String query = "";
  bool value = false;
  String commentCount = "0";
  String commentCountExisting = "";
  Timer? debouncer;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 9, bottom: 5),
          child: SepratorWidget(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const LikeButton(
                  isLiked: false,
                  campaignId: "",
                ),
                const SizedBox(
                  width: 13,
                ),
                GestureDetector(
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/sms.png"),
                        size: 18,
                        color: kIconColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4k",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 13,
                            fontFamily: kCircularStdBook),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                InkWell(
                  onTap: () {
                    // shareReceipt();
                  },
                  splashColor: kWhiteColor,
                  child: const Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/share.png"),
                        size: 18,
                        color: kIconColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                BookmarkButton(
                  isBookmarked: false,
                  campaignId: "",
                )
              ],
            )
          ],
        ),
      ],
    );
  }

  // Future shareReceipt() async {
  //   LoaderX.show(context, 50.0, 50.0);
  //   final box = context.findRenderObject() as RenderBox?;
  //   final image = widget.data.cover_Photo;
  //   final url = Uri.parse(image);
  //   final response = await http.get(url);
  //   final bytes = response.bodyBytes;
  //   final temp = await getTemporaryDirectory();
  //   final path = '${temp.path}/image.jpg';
  //   File(path).writeAsBytesSync(bytes);

  //   String appUrl = Platform.isIOS ? appStoreUrl : playStoreUrl;
  //   final titleText = "${widget.data.title}..";
  //   final appLink = "Get the free app at $appUrl";
  //   const extradata = "Get the free app at";

  //   // ignore: deprecated_member_use
  //   // await Share.shareFiles([path],
  //   //     text: "$titleText\n$appLink",
  //   //     sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  //   DynamicLinkProvider()
  //       .createLink(widget.deepLinkingSelectedPage.toString(), widget.data.id)
  //       .then((value) => Share.shareFiles([path],
  //           text: '$titleText...\n\n$extradata\n$value'));

  //   LoaderX.hide();
  // }
}
