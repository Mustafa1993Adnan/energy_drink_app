import 'package:energy_drink_app/constants_files/constants.dart';
import 'package:energy_drink_app/models/products.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../data/data.dart';
import '../widgets/can_size.dart';

class ProductsDetails extends StatelessWidget {
  final Product selectedProduct;
  final int index;
  const ProductsDetails(
      {super.key, required this.selectedProduct, required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      backgroundColor: pagePrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                right: -70,
                bottom: 20,
                child: Image.asset(
                  index < 1
                      ? listProducts[listProducts.length - 1].productImage
                      : listProducts[index - 1].productImage,
                  width: 400,
                  height: 150,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                left: -70,
                bottom: 20,
                child: Image.asset(
                  index >= listProducts.length - 1
                      ? listProducts[1].productImage
                      : listProducts[index + 1].productImage,
                  // listProducts[index + 1].productImage,
                  width: 400,
                  height: 150,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                child: Image.asset(
                  selectedProduct.productImage,
                  width: 800,
                  height: 290,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Text(selectedProduct.productTitle,
                style: customGoogleFont(
                    fontSize: 24, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(selectedProduct.productRate.toString(),
                    style: customGoogleFont(
                        fontSize: 14, fontWeight: FontWeight.w600)),
                const SizedBox(width: 4),
                Text('(${selectedProduct.review?.toInt()}) Reviews',
                    style: customGoogleFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: greyColor)),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 37, right: 34),
            child: ReadMoreText(
              selectedProduct.productDescription.toString(),
              style: customGoogleFont(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: greyColor,
              ),
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read More',
              trimExpandedText: 'Read Less',
              moreStyle: customGoogleFont(
                  color: turquoiseColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              lessStyle: customGoogleFont(
                  color: turquoiseColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 102,
            decoration: BoxDecoration(color: turquoiseColor.withOpacity(0.09)),
            child: Padding(
              padding: const EdgeInsets.only(left: 34, right: 34, top: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Offers',
                      style: customGoogleFont(
                          fontSize: 16, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(
                        Icons.check_circle_outline,
                        color: turquoiseColor,
                        size: 18,
                      ),
                      const SizedBox(width: 11),
                      Expanded(
                        child: Text('Code TRYNEW applied!',
                            style: customGoogleFont(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                      ),
                      Text('-₹ 50.00',
                          style: customGoogleFont(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '25 % off up to ₹ 100 ',
                          style: customGoogleFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: greyColor,
                          ),
                        ),
                        Text('Remove',
                            style: customGoogleFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: turquoiseColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 37),
            child: Text('Size',
                style: customGoogleFont(
                    fontSize: 20, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 10),
          CustomCanSize(),
          const Expanded(
            flex: 3,
            child: SizedBox(height: 10),
          ),
          Container(
            width: double.infinity,
            height: 116,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 25,
                  top: 27,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: customGoogleFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFB9B9B9),
                        ),
                      ),
                      Text(
                        style: customGoogleFont(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF),
                        ),
                        '₹ ${selectedProduct.productPrice.toInt()}',
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 27,
                  top: 28,
                  child: Container(
                    width: 195,
                    height: 61,
                    decoration: BoxDecoration(
                      color: turquoiseColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: customGoogleFont(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
