import '../models/Iitems/item_model.dart';

final List<Item> sampleItems = [
  Item(
    name: 'Garlic Bread',
    stockCount: 30,
    category: 'Appetizers',
    description: 'Crispy bread slices with garlic and butter spread.',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Item(
    name: 'Chicken Wings',
    stockCount: 25,
    category: 'Appetizers',
    description: 'Fried chicken wings with spicy sauce.',
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  // Main Dishes
  Item(
    name: 'Spaghetti Carbonara',
    stockCount: 15,
    category: 'Main Dishes',
    description: 'Pasta with creamy egg sauce and bacon bits.',
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Item(
    name: 'Vegetable Stir Fry',
    stockCount: 20,
    category: 'Main Dishes',
    description: 'Assorted veggies stir-fried in savory sauce.',
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
  ),

  // Desserts
  Item(
    name: 'Blueberry Cheesecake',
    stockCount: 20,
    category: 'Desserts',
    description: 'Creamy cheesecake with blueberry topping.',
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
  ),
  Item(
    name: 'Chocolate Mousse',
    stockCount: 25,
    category: 'Desserts',
    description: 'Rich and creamy chocolate dessert.',
    createdAt: DateTime.now().subtract(const Duration(days: 12)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
  ),

  // Beverages
  Item(
    name: 'Iced Tea',
    stockCount: 35,
    category: 'Beverages',
    description: 'Chilled tea with a slice of lemon.',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Item(
    name: 'Espresso',
    stockCount: 40,
    category: 'Beverages',
    description: 'Strong coffee served in small amounts.',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  // Other
  Item(
    name: 'Bread Basket',
    stockCount: 30,
    category: 'Other',
    description: 'A basket of freshly baked assorted bread.',
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Item(
    name: 'Dipping Sauce Trio',
    stockCount: 25,
    category: 'Other',
    description: 'Three different sauces for dipping.',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  Item(
    name: 'Garlic Bread',
    stockCount: 30,
    category: 'Appetizers',
    description: 'Crispy bread slices with garlic and butter spread.',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Item(
    name: 'Chicken Wings',
    stockCount: 25,
    category: 'Appetizers',
    description: 'Fried chicken wings with spicy sauce.',
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  // Main Dishes
  Item(
    name: 'Spaghetti Carbonara',
    stockCount: 15,
    category: 'Main Dishes',
    description: 'Pasta with creamy egg sauce and bacon bits.',
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Item(
    name: 'Vegetable Stir Fry',
    stockCount: 20,
    category: 'Main Dishes',
    description: 'Assorted veggies stir-fried in savory sauce.',
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
  ),

  // Desserts
  Item(
    name: 'Blueberry Cheesecake',
    stockCount: 20,
    category: 'Desserts',
    description: 'Creamy cheesecake with blueberry topping.',
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
  ),
  Item(
    name: 'Chocolate Mousse',
    stockCount: 25,
    category: 'Desserts',
    description: 'Rich and creamy chocolate dessert.',
    createdAt: DateTime.now().subtract(const Duration(days: 12)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
  ),

  // Beverages
  Item(
    name: 'Iced Tea',
    stockCount: 35,
    category: 'Beverages',
    description: 'Chilled tea with a slice of lemon.',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Item(
    name: 'Espresso',
    stockCount: 40,
    category: 'Beverages',
    description: 'Strong coffee served in small amounts.',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  // Other
  Item(
    name: 'Bread Basket',
    stockCount: 30,
    category: 'Other',
    description: 'A basket of freshly baked assorted bread.',
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Item(
    name: 'Dipping Sauce Trio',
    stockCount: 25,
    category: 'Other',
    description: 'Three different sauces for dipping.',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  Item(
    name: 'Garlic Bread',
    stockCount: 30,
    category: 'Appetizers',
    description: 'Crispy bread slices with garlic and butter spread.',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Item(
    name: 'Chicken Wings',
    stockCount: 25,
    category: 'Appetizers',
    description: 'Fried chicken wings with spicy sauce.',
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  // Main Dishes
  Item(
    name: 'Spaghetti Carbonara',
    stockCount: 15,
    category: 'Main Dishes',
    description: 'Pasta with creamy egg sauce and bacon bits.',
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
    updatedAt: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Item(
    name: 'Vegetable Stir Fry',
    stockCount: 20,
    category: 'Main Dishes',
    description: 'Assorted veggies stir-fried in savory sauce.',
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
    updatedAt: DateTime.now().subtract(const Duration(days: 6)),
  ),

  // Desserts
  Item(
    name: 'Blueberry Cheesecake',
    stockCount: 20,
    category: 'Desserts',
    description: 'Creamy cheesecake with blueberry topping.',
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
    updatedAt: DateTime.now().subtract(const Duration(days: 7)),
  ),
  Item(
    name: 'Chocolate Mousse',
    stockCount: 25,
    category: 'Desserts',
    description: 'Rich and creamy chocolate dessert.',
    createdAt: DateTime.now().subtract(const Duration(days: 12)),
    updatedAt: DateTime.now().subtract(const Duration(days: 8)),
  ),

  // Beverages
  Item(
    name: 'Iced Tea',
    stockCount: 35,
    category: 'Beverages',
    description: 'Chilled tea with a slice of lemon.',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Item(
    name: 'Espresso',
    stockCount: 40,
    category: 'Beverages',
    description: 'Strong coffee served in small amounts.',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),

  // Other
  Item(
    name: 'Bread Basket',
    stockCount: 30,
    category: 'Other',
    description: 'A basket of freshly baked assorted bread.',
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    updatedAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Item(
    name: 'Dipping Sauce Trio',
    stockCount: 25,
    category: 'Other',
    description: 'Three different sauces for dipping.',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
    updatedAt: DateTime.now().subtract(const Duration(days: 3)),
  ),
];

// Item Categories
const List<String> itemCategories = [
  'All Categories',
  'Appetizers',
  'Main Dishes',
  'Beverages',
  'Desserts',
  'Other',
];
const String notSelected = 'Not Selected';

// Prefectures
const List<String> prefectures = [
  'Hokkaido',
  'Aomori',
  'Iwate',
  'Miyagi',
  'Akita',
  'Yamagata',
  'Fukushima',
  'Ibaraki',
  'Tochigi',
  'Gunma',
  'Saitama',
  'Chiba',
  'Tokyo',
  'Kanagawa',
  'Niigata',
  'Toyama',
  'Ishikawa',
  'Fukui',
  'Yamanashi',
  'Nagano',
  'Gifu',
  'Shizuoka',
  'Aichi',
  'Mie',
  'Shiga',
  'Kyoto',
  'Osaka',
  'Hyogo',
  'Nara',
  'Wakayama',
  'Tottori',
  'Shimane',
  'Okayama',
  'Hiroshima',
  'Yamaguchi',
  'Tokushima',
  'Kagawa',
  'Ehime',
  'Kochi',
  'Fukuoka',
  'Saga',
  'Nagasaki',
  'Kumamoto',
  'Oita',
  'Miyazaki',
  'Kagoshima',
  'Okinawa'
];
