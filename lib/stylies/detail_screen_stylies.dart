import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class DetailScreenStylies {
  // commpanyTitleStyle
  static const TextStyle commpanyTitleStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
//productModelStyle
  static const TextStyle productModelStyle = TextStyle(
    color: AppColors.baseDarkPinkColor,
  );
//productPriceStyle

  static const TextStyle productPriceStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

//productOldPriceStyle

  static const TextStyle productOldPriceStyle = TextStyle(
    color: AppColors.baseGrey60Color,
    fontSize: 16,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600,
  );

  //productFropDownValueStyle
  static const TextStyle productDropDownValueStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 12,
  );

//buttonTextStyle
  static const TextStyle buttonTextStyle = TextStyle(
    color: AppColors.baseWhiteColor,
    fontSize: 20,
  );
//descriptionTextStyle
  static const TextStyle descriptionTextStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.baseBlackColor,
  );
  //sizeGruideTextStyle
  static const TextStyle sizeGruideTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.baseBlackColor,
  );
//youmayalsolikeTextStyle
  static const TextStyle youmayalsolikeTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.baseBlackColor,
  );

  //showAllTextStyle
  static const TextStyle showAllTextStyle = TextStyle(
    fontSize: 18.0,
    color: AppColors.baseDarkPinkColor,
  );
}
