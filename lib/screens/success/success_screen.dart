import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/routes/routes.dart';
import 'package:cheap_charly/screens/homepage/home_page.dart';
import 'package:cheap_charly/svgimages/svg_images.dart';
import 'package:cheap_charly/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SuccessScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "Success",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.close,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Congratulations",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppColors.baseBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Your order is accepted",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: AppColors.baseBlackColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Your items are on the way",
                              style: TextStyle(
                                color: AppColors.baseGrey40Color,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "and should arrive shortly",
                              style: TextStyle(
                                color: AppColors.baseGrey40Color,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: MyButtonWidget(
                onPress: () {
                  PageRouting.goToNextPage(
                    context: context,
                    navigateTo: HomePage(),
                  );
                },
                text: "Back to Home",
                color: AppColors.baseDarkPinkColor),
          ),
        ],
      ),
    );
  }
}
