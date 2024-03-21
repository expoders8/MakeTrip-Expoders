import 'dart:io';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:maketrip/app/routes/app_pages.dart';

import '../../../config/constant/font_constant.dart';
import '../../models/top_destination_list_model.dart';
import '../widgets/like_button.dart';
import '../../../config/constant/color_constant.dart';

class TopDestinationPage extends StatefulWidget {
  const TopDestinationPage({super.key});

  @override
  State<TopDestinationPage> createState() => _TopDestinationPageState();
}

class _TopDestinationPageState extends State<TopDestinationPage> {
  TextEditingController searchController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  var data = ['kamrej', 'jajet', 'delta'];
  List<TopDestinationModel> topDestinationModel = [
    TopDestinationModel(
      image: "assets/images/hotel.png",
      cityName: "The Orchid Hotel",
      name: "London",
      address: "",
      days: "9",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Top Restaurants / Hotels"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [kAppBackGround1Color, kAppBackGround2Color],
              ),
            ),
          ),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [kAppBackGround1Color, kAppBackGround2Color],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.repeated),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: kWhiteColor,
                        border: Border.all(color: kWhiteColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            height: 45,
                            width: Get.width - 29,
                            child: TypeAheadField(
                              debounceDuration:
                                  const Duration(microseconds: 10),
                              hideSuggestionsOnKeyboardHide: true,
                              textFieldConfiguration: TextFieldConfiguration(
                                controller: cityController,
                                textInputAction: Platform.isAndroid
                                    ? TextInputAction.none
                                    : TextInputAction.unspecified,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Select your City',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor,
                                    fontSize: 14,
                                  ),
                                  hintMaxLines: 1,
                                  contentPadding: const EdgeInsets.all(15),
                                  suffixIcon: Image.asset(
                                    "assets/icons/polygon_down.png",
                                    scale: 1.2,
                                    width: 5,
                                  ),
                                ),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                ),
                                onSubmitted: (value) {},
                                autocorrect: true,
                                cursorColor: kPrimaryColor,
                              ),
                              suggestionsCallback: (String pattern) async {
                                List<String> filteredCities = data
                                    .where((city) => city
                                        .toLowerCase()
                                        .contains(pattern.toLowerCase()))
                                    .toList();
                                return filteredCities;
                              },
                              itemBuilder: (context, String suggestion) {
                                return ListTile(
                                  title: Text(suggestion),
                                );
                              },
                              noItemsFoundBuilder: (context) => const SizedBox(
                                child: Center(
                                  child: Text('No City found'),
                                ),
                              ),
                              transitionBuilder:
                                  (context, suggestionsBox, controller) {
                                return suggestionsBox;
                              },
                              onSuggestionSelected: (String suggestion) {
                                cityController.text = suggestion;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: Get.width - 10,
                      child: TextFormField(
                        style:
                            const TextStyle(color: kPrimaryColor, fontSize: 15),
                        controller: searchController,
                        decoration: InputDecoration(
                          labelText: "Search",
                          filled: true,
                          fillColor: kWhiteColor,
                          contentPadding:
                              const EdgeInsets.fromLTRB(38, 0, 10, 0),
                          hintStyle: const TextStyle(color: kGreyColor),
                          labelStyle: const TextStyle(color: kBlackColor),
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: kErrorColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorStyle: const TextStyle(color: kErrorColor),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: kWhiteColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: kWhiteColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height - 213,
                width: Get.width,
                child: AnimationLimiter(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(right: 5),
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        delay: const Duration(milliseconds: 100),
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 2500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: FadeInAnimation(
                            curve: Curves.fastLinearToSlowEaseIn,
                            duration: const Duration(milliseconds: 2500),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.tripDetailsPage);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 6,
                                  shadowColor:
                                      const Color.fromARGB(50, 0, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Image.asset(
                                              "assets/images/hotel.png",
                                              fit: BoxFit.cover,
                                              width: Get.width,
                                              height: 200,
                                            ),
                                            const Positioned(
                                                top: 19,
                                                right: 19,
                                                child: LikeButton(
                                                  isLiked: false,
                                                  campaignId: "",
                                                )),
                                            Positioned(
                                                bottom: -15,
                                                right: 20,
                                                child: Container(
                                                  width: 100,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          kTextSecondaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                  child: const Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .calendar_month_outlined,
                                                        color: kWhiteColor,
                                                        size: 16,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        "9 Days TOur",
                                                        style: TextStyle(
                                                            color: kWhiteColor,
                                                            fontSize: 13),
                                                      ),
                                                    ],
                                                  ),
                                                ))
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "London",
                                              style: TextStyle(
                                                  color: kTextSecondaryColor,
                                                  fontSize: 19),
                                            ),
                                            const Text("The Orchid Hotel",
                                                style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontSize: 22)),
                                            const Text("Star"),
                                            // Text(
                                            //   data.address,
                                            //   style: const TextStyle(
                                            //       color: ksecondaryColor, fontSize: 15),
                                            // ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/wifi.png",
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 4),
                                                Image.asset(
                                                  "assets/icons/restaurant.png",
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 4),
                                                Image.asset(
                                                  "assets/icons/cup.png",
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 4),
                                                Image.asset(
                                                  "assets/icons/swimming.png",
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 4),
                                                Image.asset(
                                                  "assets/icons/food.png",
                                                  width: 20,
                                                  height: 20,
                                                ),
                                                const SizedBox(width: 8),
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 5,
                                                      vertical: 3),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xFFA5A5A5)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: const Text(
                                                    "Couple Friendly",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFA5A5A5)),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            const Divider(
                                              thickness: 0.8,
                                              color: kDividerColor,
                                            ),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("\$260.00",
                                                        style: TextStyle(
                                                            color:
                                                                kTextSecondaryColor,
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(width: 5),
                                                    Text("(1 Room/Night)",
                                                        style: TextStyle(
                                                            color:
                                                                kPrimaryColor,
                                                            fontSize: 12,
                                                            fontFamily:
                                                                kCircularStdNormal)),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15.0),
                                                  child: Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    size: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  buildCardWidget(String image, String country, String city, String location,
      String money) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.tripDetailsPage);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 6,
          shadowColor: const Color.fromARGB(50, 0, 0, 0),
          child: Container(
            decoration: BoxDecoration(
                color: kWhiteColor, borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: Get.width,
                      height: 220,
                    ),
                    const Positioned(
                        top: 19,
                        right: 19,
                        child: LikeButton(
                          isLiked: false,
                          campaignId: "",
                        )),
                    Positioned(
                        bottom: -15,
                        right: 20,
                        child: Container(
                          width: 100,
                          height: 35,
                          decoration: BoxDecoration(
                              color: kTextSecondaryColor,
                              borderRadius: BorderRadius.circular(4)),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: kWhiteColor,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "9 Days TOur",
                                style:
                                    TextStyle(color: kWhiteColor, fontSize: 13),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      country,
                      style: const TextStyle(
                          color: kTextSecondaryColor, fontSize: 19),
                    ),
                    Text(city,
                        style: const TextStyle(
                            color: kPrimaryColor, fontSize: 22)),
                    const Text("Star"),
                    Text(
                      location,
                      style:
                          const TextStyle(color: ksecondaryColor, fontSize: 15),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      thickness: 0.8,
                      color: kDividerColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(money,
                            style: const TextStyle(
                                color: kTextSecondaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
