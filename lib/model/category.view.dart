class Category {
  String id = '';
  String name = '';

  Category({
    required this.id,
    required this.name,
  });
}

final List<Category> listAllCategories = [
  Category(id: '01', name: 'Furniture'),
  Category(id: '02', name: 'Agriculture'),
  Category(id: '03', name: 'Electronics'),
  Category(id: '04', name: 'Food'),
  Category(id: '05', name: 'Fashion'),
  Category(id: '06', name: 'Miscallenous'),
];

