import 'package:flutter/material.dart';

import 'package:ui_one/src/configs/textTheme.dart';
import 'package:ui_one/src/models/product.dart';

class CatagoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      height: 60,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          primary: false,
          itemCount: Product.catagory.length,
          itemBuilder: (BuildContext context, int index) {
            final item = Product.catagory[index];
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: color_Grey.withOpacity(.15),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '${item['title']}',
                    style: themeData.textTheme.headline5,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
