import 'package:energy_drink_app/data/data.dart';
import 'package:energy_drink_app/screens/products_details_screen.dart';
import 'package:flutter/material.dart';

import '../constants_files/constants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    if (cartListProducts.isNotEmpty) {
      for (var item in cartListProducts) {
        totalPrice += item.productPrice;
      }
    }

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 26, right: 21, top: 10),
            child: Text(
              'My Cart',
              style:
                  customGoogleFont(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),

          ///Items
          Expanded(
            child: cartListProducts.isEmpty
                ? Center(
                    child: Text(
                    "There is no product in cart ",
                    style: customGoogleFont(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ))
                : GridView.builder(
                    itemCount: cartListProducts.length,
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
                                          selectedProduct:
                                              cartListProducts[index],
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
                                          cartListProducts[index]
                                              .productImage
                                              .toString(),
                                          width: 57,
                                          height: 107,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 18),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'All New',
                                                  style: customGoogleFont(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: turquoiseColor),
                                                ),
                                                Text(
                                                  cartListProducts[index]
                                                      .productTitle
                                                      .toString(),
                                                  style: customGoogleFont(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Text(
                                        '₹ ${cartListProducts[index].productPrice}',
                                        style: customGoogleFont(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
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
                                            Icons.remove,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              totalPrice -=
                                                  cartListProducts[index]
                                                      .productPrice;
                                              cartListProducts.removeAt(index);
                                              print(totalPrice);
                                            });

                                            final snackBar = SnackBar(
                                              duration:
                                                  const Duration(seconds: 2),
                                              backgroundColor: turquoiseColor,
                                              width:
                                                  280.0, // Width of the SnackBar.
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal:
                                                    8.0, // Inner padding for SnackBar content.
                                              ),
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              content: Text(
                                                '${cartListProducts[index].productTitle} removed from the cart',
                                                style: customGoogleFont(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w800,
                                                    color: pagePrimaryColor),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      mainAxisExtent: 217,
                    ),
                  ),
          ),

          ///Total Price
          Padding(
            padding: const EdgeInsets.only(bottom: 71),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: customGoogleFont(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: greyColor),
                    ),
                    Text(
                      '₹ ${totalPrice.toInt()}',
                      style: customGoogleFont(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
