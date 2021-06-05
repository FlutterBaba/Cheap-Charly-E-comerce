import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/stylies/category_screen_stylies.dart';
import 'package:flutter/material.dart';

class CategoryProductWidget extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModel;
  final Function onPressed;
  CategoryProductWidget({
    this.productImage,
    this.productName,
    this.productModel,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    productImage,
                  ),
                )),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: CategoryScreenStylies.categoryProductNameStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    productModel,
                    style: CategoryScreenStylies.categoryProductModelStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.baseBlackColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
