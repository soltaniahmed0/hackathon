class Category {
  const Category(this.icon, this.title, this.id);

  final String icon;
  final String title;
  final String id;
}

final homeCategries = <Category>[
  const Category('assets/icons/image.png', 'Tunisia', 'tunis'),
  const Category('assets/icons/african.jpg', 'Africa', 'African Liberty Day'),
  const Category('assets/icons/bey.jpg', 'tunisia', 'Bey'),
  const Category('assets/icons/fauna.jpg', 'Bardo', 'Fauna'),
  const Category('assets/icons/flora.jpg', 'Athina', 'flora'),
  const Category('assets/icons/HumainRight.jpg', 'Earth', 'Humain Rights'),
  const Category('assets/icons/image.png', 'Hammamet', 'fort'),
  const Category('assets/icons/MusicalInstr.jpg', 'Tunisian Art', 'Musical Instriments'),
];
