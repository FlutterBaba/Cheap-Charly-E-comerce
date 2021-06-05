import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenStylies {
  // appBarUpperTitleStylies stylies
  static const TextStyle appBarUpperTitleStylies = TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.bold,
  );
//appBarBottomTitleStylies
  static const TextStyle appBarBottomTitleStylies = TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );
  //trendingProductNameStyle
  static const TextStyle trendingProductNameStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
//trendingProductModelStyle
  static const TextStyle trendingProductModelStyle = TextStyle(
    fontSize: 14,
    color: AppColors.baseDarkPinkColor,
  );
  //trendingProductPriceStyle
  static const TextStyle trendingProductPriceStyle = TextStyle(
    fontSize: 18,
    color: AppColors.baseWhiteColor,
  );
}
