import 'package:energy_drink_app/models/products.dart';

import '../models/offer.dart';

Offer offer = Offer(
    offerTitle: 'The Holi \nOffer',
    offerPercent: 30,
    offerImage: 'assets/images/canTurq.png');

List<Product> listProducts = [
  Product(
      productTitle: 'Cool Berry',
      productDescription:
          'The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste',
      productImage: 'assets/images/canTurq.png',
      productPrice: 200,
      productRate: 4,
      review: 9),
  Product(
      productTitle: 'Chill Cherry',
      productDescription:
          'The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste',
      productImage: 'assets/images/canRed.png',
      productPrice: 150,
      productRate: 5,
      review: 2991),
  Product(
      productTitle: 'Pin Pineapple',
      productDescription:
          'The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing tasteThe fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste',
      productImage: 'assets/images/canYellow.png',
      productPrice: 150,
      productRate: 2,
      review: 653),
  Product(
      productTitle: 'Mint',
      productDescription:
          'The fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing tasteThe fizz booom  is appreciated worldwide during the festival of holi. It’s refrershing taste',
      productImage: 'assets/images/canGreen.png',
      productPrice: 150,
      productRate: 3,
      review: 120),
];

List<Product> cartListProducts = [];
