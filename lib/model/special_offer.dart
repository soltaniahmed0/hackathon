class SpecialOffer {
  final String discount;
  final String title;
  final String detail;
  final String icon;

  SpecialOffer({
    required this.discount,
    required this.title,
    required this.detail,
    required this.icon,
  });
}

final homeSpecialOffers = <SpecialOffer>[
  SpecialOffer(
    discount: 'History',
    title: "Today’s Special stamp!",
    detail: 'Get into the story',
    icon: 'assets/icons/products/ex1.jpg',
  ),
  SpecialOffer(
    discount: 'Africa',
    title: "yes! Tomorrow exist ",
    detail: 'Please give me a star!',
    icon: 'assets/icons/african.jpg',
  ),
  SpecialOffer(
    discount: 'Musical',
    title: "new day new history !",
    detail: 'If you have any ideas',
    icon: 'assets/icons/MusicalInstr.jpg',
  ),
  SpecialOffer(
    discount: 'Fauna',
    title: "It's for you!",
    detail: 'Wish you have a funny story',
    icon: 'assets/icons/fauna.jpg',
  ),
  SpecialOffer(
    discount: 'HRights',
    title: "Make your own history",
    detail: 'If you have any confuse, imagine',
    icon: 'assets/icons/HumainRight.jpg',
  ),
];
