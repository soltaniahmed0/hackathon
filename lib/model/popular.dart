class PopularCategory {
  final String category;
  final String id;

  PopularCategory({this.category = '', this.id = ''});
}

class Product {
  final String title;
  final double star;
  final int sold;
  final double price;
  final String icon;
  final String id;

  Product(
      {this.title = '',
      this.star = 0.0,
      this.sold = 0,
      this.price = 0.0,
      this.icon = '',
      this.id = '0'});
}

final homePopularCategories = [
  PopularCategory(category: 'All', id: '1'),
  PopularCategory(category: 'Tunisian', id: '2'),
  PopularCategory(category: 'Postal', id: '3'),
  PopularCategory(category: 'Rare', id: '4'),
  PopularCategory(category: 'Theme', id: '5'),
  PopularCategory(category: 'Contery', id: '6'),
  PopularCategory(category: 'Price', id: '7'),
  PopularCategory(category: 'Rare', id: '8'),
];

final homePopularProducts = [
  Product(
    title: 'Africa stemp',
    star: 6.5,
    sold: 7758,
    price: 25.00,
    icon: 'assets/icons/african.jpg',
  ),
  Product(
    title: 'Athina stemp',
    star: 4.5,
    sold: 5876,
    price: 69.00,
    icon: 'assets/icons/flora.jpg',
  ),
  Product(
    title: 'Fauna stemp',
    star: 6.5,
    sold: 4558,
    price: 70.00,
    icon: 'assets/icons/fauna.jpg',
  ),
  Product(
    title: 'Humain Rights',
    star: 7.5,
    sold: 5458,
    price: 0.200,
    icon: 'assets/icons/HumainRight.jpg',
  ),
  Product(
    title: 'tinber tunisian',
    star: 5.5,
    sold: 6248,
    price: 0.500,
    icon: 'assets/icons/products/ex1.jpg',
  ),
  Product(
    title: 'Musical Instruments',
    star: 2.5,
    sold: 6668,
    price: 1000,
    icon: 'assets/icons/MusicalInstr.jpg',
  ),
  Product(
    title: 'tinber tunisian',
    star: 6.5,
    sold: 7555,
    price: 0.40,
    icon: 'assets/icons/products/ex1.jpg',
  ),

];
