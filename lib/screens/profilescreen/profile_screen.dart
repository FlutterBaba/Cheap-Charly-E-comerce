import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/svgimages/svg_images.dart';
import 'package:cheap_charly/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.70,
      centerTitle: true,
      backgroundColor: AppColors.baseWhiteColor,
      title: Text(
        "Account",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.edit,
            color: AppColors.baseBlackColor,
            width: 25,
          ),
        )
      ],
      shadowColor: AppColors.baseGrey10Color,
    );
  }

  Widget buildlistTileWidget({String leading, String trailing}) {
    return ListTile(
      tileColor: AppColors.baseWhiteColor,
      leading: Text(
        leading,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildBottomListTile({String leading, String trailing}) {
    return ListTile(
      onTap: () {},
      tileColor: AppColors.baseWhiteColor,
      leading: Text(
        leading,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Wrap(
        spacing: 5,
        children: [
          Text(
            trailing,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/7b/48/65/7b48654b92587f3df86c21d7071bad42.jpg"),
                    ),
                  ),
                  Text(
                    "Aqeel Baloch",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Phong Colony ...Sui",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildlistTileWidget(
                    leading: "Full name", trailing: "Aqeel Baloch"),
                Divider(),
                buildlistTileWidget(
                  leading: "Email",
                  trailing: "Aqeelbaloch123@gmail.com",
                ),
                Divider(),
                buildlistTileWidget(
                  leading: "Address",
                  trailing: "123123",
                ),
                Divider(),
                buildlistTileWidget(
                  leading: "Payment",
                  trailing: "6011\t****\t****\t1117",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildBottomListTile(
                  leading: "Wish-list",
                  trailing: "5",
                ),
                Divider(),
                buildBottomListTile(
                  leading: "My bag",
                  trailing: "3",
                ),
                Divider(),
                buildBottomListTile(
                  leading: "My orders",
                  trailing: "1 in transit",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: MyButtonWidget(
              color: AppColors.baseDarkPinkColor,
              onPress: () {},
              text: "Log out",
            ),
          ),
        ],
      ),
    );
  }
}
