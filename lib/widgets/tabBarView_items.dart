import 'package:energy_drink_app/constants_files/constants.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../screens/products_details_screen.dart';

class tabBarViewItem extends StatelessWidget {
  const tabBarViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listProducts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Item start
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsDetails(
                            selectedProduct: listProducts[index],
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            listProducts[index].productImage.toString(),
                            width: 57,
                            height: 107,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'All New',
                                    style: customGoogleFont(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: turquoiseColor),
                                  ),
                                  Text(
                                    listProducts[index].productTitle.toString(),
                                    style: customGoogleFont(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Price and add to list
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Text(
                          '₹ ${listProducts[index].productPrice}',
                          style: customGoogleFont(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: 39,
                        height: 39,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(9),
                            bottomRight: Radius.circular(9),
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {
                              cartListProducts.add(listProducts[index]);
                              final snackBar = SnackBar(
                                duration: const Duration(seconds: 2),
                                backgroundColor: turquoiseColor,
                                width: 280.0, // Width of the SnackBar.
                                padding: const EdgeInsets.symmetric(
                                  horizontal:
                                      8.0, // Inner padding for SnackBar content.
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                content: Text(
                                  '${listProducts[index].productTitle} Added to the cart',
                                  style: customGoogleFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: pagePrimaryColor),
                                ),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  textColor: pagePrimaryColor,
                                  onPressed: () {
                                    cartListProducts
                                        .remove(listProducts[index]);
                                    // Some code to undo the change.
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              print(cartListProducts);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        mainAxisExtent: 217,
      ),
    );
  }
}
