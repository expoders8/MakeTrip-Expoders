import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';

// ignore: must_be_immutable
class LikeButton extends StatefulWidget {
  final bool isLiked;
  final String campaignId;
  const LikeButton({
    Key? key,
    required this.isLiked,
    required this.campaignId,
  }) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  String userData = "";
  bool isLikedState = false;
  get getIsLikedState => isLikedState == true;
  // LikebookmarkService likeBookmarkService = LikebookmarkService();

  @override
  void initState() {
    // getUser();
    isLikedState = widget.isLiked;
    super.initState();
  }

  // Future getUser() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var data = prefs.getString('user');
  //   if (data != null) {
  //     setState(() => {
  //           userData = "data",
  //         });
  //   }
  // }

  Future _toggleIsLikedState() async {
    if (getIsLikedState) {
      setState(() => isLikedState = false);
      // likeBookmarkService.likeBookmark(widget.campaignId, "Like");
    } else {
      setState(() => isLikedState = true);
      // likeBookmarkService.likeBookmark(widget.campaignId, "Like");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: InkWell(
          onTap: _toggleIsLikedState,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: kWhiteColor),
            child: getIsLikedState
                ? Image.asset(
                    "assets/icons/like.png",
                    scale: 1.7,
                  )
                : Image.asset(
                    "assets/icons/disLike.png",
                    color: kPrimaryColor,
                  ),
          )

          // ImageIcon(
          //   const AssetImage("assets/icons/like.png"),
          //   size: 18,
          //   color: getIsLikedState ? const Color(0XFFDA1643) : kPrimaryColor,
          // ),
          ),
    );
  }
}
