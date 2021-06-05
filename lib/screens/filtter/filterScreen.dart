import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/stylies/detail_screen_stylies.dart';
import 'package:cheap_charly/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String _ratingController;
  String _categoryController;

  RangeValues _currentRangeValues = const RangeValues(40, 80);

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        "Filter",
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  Widget buildExpansionTil({
    List<String> items,
    String title,
    String hint,
    String value,
  }) {
    return ExpansionTile(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  fillColor: AppColors.basewhite60Color,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                iconSize: 30,
                hint: Text(
                  hint,
                  style: DetailScreenStylies.productDropDownValueStyle,
                ),
                value: value,
                items: items
                    .map(
                      (e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ),
                    )
                    .toList(),
                onChanged: (String value) {
                  setState(
                    () {
                      value = value;
                    },
                  );
                },
              ),
            ],
          ),
        )
      ],
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.baseBlackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildListTile({String title}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  Widget buildSizeGuides(
      {String text, bool containerColor = false, Color color}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: containerColor ? color : AppColors.baseGrey10Color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: containerColor
          ? Container()
          : Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }

  Widget buildPriceExpansionTile() {
    return ExpansionTile(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 1000,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$\t${_currentRangeValues.start.toInt()}",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.baseBlackColor,
                    ),
                  ),
                  Text(
                    "\$\t${_currentRangeValues.end.toInt()}",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.baseBlackColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
      title: Text(
        "Price",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.baseBlackColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildListTile(
            title: "Most popular",
          ),
          Divider(),
          buildListTile(
            title: "New Items",
          ),
          Divider(),
          buildListTile(
            title: "Price:\t High - Low",
          ),
          Divider(),
          buildListTile(
            title: "Price:\t Low - High",
          ),
          Divider(),
          buildExpansionTil(
            value: _ratingController,
            items: [
              "Woman",
              "Men",
              "Kids",
            ],
            hint: "Gender",
            title: "Gender",
          ),
          Divider(),
          buildExpansionTil(
            value: _categoryController,
            items: [
              "T-Shirt",
              "Jecket",
              "Sneakers",
            ],
            hint: "Category",
            title: "Category",
          ),
          Divider(),
          ExpansionTile(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 5,
                  primary: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    buildSizeGuides(
                      text: "5",
                    ),
                    buildSizeGuides(
                      text: "5.5",
                    ),
                    buildSizeGuides(
                      text: "6",
                    ),
                    buildSizeGuides(
                      text: "6.5",
                    ),
                    buildSizeGuides(
                      text: "7",
                    ),
                    buildSizeGuides(
                      text: "7.5",
                    ),
                    buildSizeGuides(
                      text: "8",
                    ),
                    buildSizeGuides(
                      text: "8.5",
                    ),
                    buildSizeGuides(
                      text: "9",
                    ),
                    buildSizeGuides(
                      text: "9.5",
                    ),
                    buildSizeGuides(
                      text: "10",
                    ),
                    buildSizeGuides(
                      text: "10.5",
                    ),
                    buildSizeGuides(
                      text: "11",
                    ),
                    buildSizeGuides(
                      text: "11",
                    ),
                  ],
                ),
              )
            ],
            title: Text(
              "Size",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.baseBlackColor,
              ),
            ),
          ),
          Divider(),
          ExpansionTile(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: GridView.count(
                  crossAxisCount: 5,
                  primary: true,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    buildSizeGuides(
                      color: AppColors.baseDarkPinkColor,
                      containerColor: true,
                    ),
                    buildSizeGuides(
                      color: Colors.yellow,
                      containerColor: true,
                    ),
                    buildSizeGuides(
                      color: Colors.green,
                      containerColor: true,
                    ),
                    buildSizeGuides(
                      color: Colors.pinkAccent,
                      containerColor: true,
                    ),
                    buildSizeGuides(
                      color: Colors.yellowAccent,
                      containerColor: true,
                    ),
                  ],
                ),
              )
            ],
            title: Text(
              "Colors",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.baseBlackColor,
              ),
            ),
          ),
          buildPriceExpansionTile(),
          Container(
            margin: EdgeInsets.all(20.0),
            child: MyButtonWidget(
              color: AppColors.baseDarkPinkColor,
              onPress: () {},
              text: "View more item",
            ),
          ),
        ],
      ),
    );
  }
}
