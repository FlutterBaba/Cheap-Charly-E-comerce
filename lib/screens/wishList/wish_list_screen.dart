import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/svgimages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishListScreen extends StatefulWidget {
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  String sizeController;
  String colorsController;
  String quantityController;
  Widget buildSignleBag() {
    return Card(
      child: Container(
        height: 140,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://kickz.akamaized.net/en/media/images/p/600/adidas_originals-3_STRIPES_T_Shirt-white_-2.jpg"),
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "3 stripes shirt",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.baseBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "adidas originals",
                            style: TextStyle(
                              color: AppColors.baseDarkPinkColor,
                            ),
                          ),
                          Text(
                            "\$40.00",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.baseBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$80.00",
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.baseGrey50Color,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.baseGrey30Color,
                        child: Icon(
                          Icons.check,
                          color: AppColors.baseWhiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "WishList",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: 14.0,
            top: 14.0,
          ),
          child: Text(
            "Select",
            style: TextStyle(
              fontSize: 20,
              color: AppColors.baseBlackColor,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 55,
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: AppColors.baseGrey80Color,
                    onSurface: Colors.grey,
                  ),
                  icon: SvgPicture.asset(
                    SvgImages.delete,
                    color: AppColors.baseWhiteColor,
                    width: 30,
                  ),
                  label: Text(
                    "Remove",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColors.baseWhiteColor,
                    ),
                  ),
                  onLongPress: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 55,
                margin: EdgeInsets.all(10.0),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: AppColors.baseDarkPinkColor,
                    onSurface: Colors.grey,
                  ),
                  icon: SvgPicture.asset(
                    SvgImages.shoppingCart,
                    color: AppColors.baseWhiteColor,
                    width: 30,
                  ),
                  label: Text(
                    "Buy now",
                    style: TextStyle(
                      fontSize: 22,
                      color: AppColors.baseWhiteColor,
                    ),
                  ),
                  onLongPress: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
                buildSignleBag(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
