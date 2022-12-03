class Product {
  String productTitle, productDescription, productImage;
  double productPrice, productRate;
  double? review = 0;
  Product(
      {required this.productTitle,
      required this.productDescription,
      required this.productImage,
      required this.productPrice,
      required this.productRate,
      this.review});
}
