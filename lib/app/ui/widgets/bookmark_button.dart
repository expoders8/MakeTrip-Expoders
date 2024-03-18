import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';

class BookmarkButton extends StatefulWidget {
  final bool isBookmarked;
  final String campaignId;
  const BookmarkButton(
      {Key? key, required this.isBookmarked, required this.campaignId})
      : super(key: key);

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmarkState = false;
  String userData = "";

  get getIsBookmarkedState => isBookmarkState == true;

  @override
  void initState() {
    isBookmarkState = widget.isBookmarked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: InkWell(
        onTap: () {},
        child: ImageIcon(
          const AssetImage("assets/icons/save.png"),
          size: 18,
          color: userData != ""
              ? getIsBookmarkedState
                  ? kPrimaryColor
                  : kIconColor
              : kIconColor,
        ),
      ),
    );
  }
}
