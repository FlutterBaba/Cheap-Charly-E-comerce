import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/routes/routes.dart';
import 'package:cheap_charly/screens/success/success_screen.dart';
import 'package:cheap_charly/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  Widget buildConfirmationProduct() {
    return Container(
      height: 140,
      color: AppColors.baseWhiteColor,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://assets.reebok.com/images/w_600,f_auto,q_auto/0a1c1783bbc44829b58eab45000a4a62_9366/Reebok_Raw_Champ_One_Piece_Swim_Suit_Multi_EW5775.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "3-T-shirt ",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.baseBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Adidas originals",
                          style: TextStyle(
                            color: AppColors.baseDarkPinkColor,
                          ),
                        ),
                        Text(
                          "Size\t M",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.baseGrey60Color,
                          ),
                        ),
                        Text(
                          "Color\t Black",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.baseGrey60Color,
                          ),
                        ),
                        Text(
                          "Quantity\t x1",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.baseGrey60Color,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "\$40.00",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.baseBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "\$80.00",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.baseBlackColor,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  Widget buildBottomPart({BuildContext context}) {
    return Column(
      children: [
        ListTile(
          tileColor: AppColors.baseGrey10Color,
          title: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order amount",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Your total amount of discount",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.baseBlackColor,
                  ),
                ),
              ],
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$103.98",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$-55.98",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.baseBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: AppColors.baseGrey10Color,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 23),
          child: MyButtonWidget(
            color: AppColors.baseDarkPinkColor,
            text: "Place Order",
            onPress: () {
              PageRouting.goToNextPage(
                  context: context, navigateTo: SuccessScreen());
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: AppColors.baseGrey10Color,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Confirmation",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.baseBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "order number #223189817",
                  ),
                ),
                buildConfirmationProduct(),
                buildConfirmationProduct(),
                buildConfirmationProduct(),
                buildConfirmationProduct(),
                buildBottomPart(context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
