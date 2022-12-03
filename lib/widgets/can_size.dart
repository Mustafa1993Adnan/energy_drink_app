import 'package:energy_drink_app/constants_files/constants.dart';
import 'package:flutter/material.dart';

class CustomCanSize extends StatelessWidget {
  const CustomCanSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List canSizeList = ['Can', '300 ml', '1 ltr', '2 ltr'];
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 37),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 70,
              height: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: index == 0 ? turquoiseColor : greyColor,
                ),
              ),
              child: Center(
                child: Text(
                  canSizeList[index],
                  style: TextStyle(
                    color: index == 0 ? turquoiseColor : greyColor,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 15);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
