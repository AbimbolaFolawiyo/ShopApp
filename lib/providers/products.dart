import 'package:flutter/cupertino.dart';

import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Bag 1',
      description: 'Tealed colored bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/6c/f8/63/6cf863662ce6a4c1c14591c21fe0565e.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Bag 2',
      description: 'Black colored bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/3a/b8/32/3ab8328a57f557d5be85c5dc09ff4414.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Bag 3',
      description: 'Light-Blue colored bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/36/d2/82/36d2826e2084c454ba6e207ecd176642.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Bag 4',
      description: 'Channel bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/66/2a/2f/662a2f091eba4af734621b0fc5c25371.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Bag 5',
      description: 'Channel Black bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/d4/99/cc/d499cc340bf5b18401543ef60a0cefb5.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Bag 6',
      description: 'Pink bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/8c/8a/90/8c8a900753e67d546e8419b0660838c6.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Bag 7',
      description: 'Blue-Brown Leather bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/d0/ac/8c/d0ac8c05d7155bbe6df4f7376536a95d.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Bag 8',
      description: 'Meat Skinned bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/4c/65/86/4c6586481c529586eb189bc0a07328b5.jpg',
    ),
    Product(
      id: 'p9',
      title: 'Bag 9',
      description: 'Ash Coloured bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/10/bc/2d/10bc2d61f62c9541d32367287546ba93.jpg',
    ),
    Product(
      id: 'p10',
      title: 'Bag 10',
      description: 'Black Prada bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/90/fc/d8/90fcd8dd8b9bbe027932ec294bc49710.jpg',
    ),
    Product(
      id: 'p11',
      title: 'Bag 11',
      description: 'White Prada bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/d0/ac/8c/d0ac8c05d7155bbe6df4f7376536a95d.jpg',
    ),
    Product(
      id: 'p12',
      title: 'Bag 12',
      description: 'White and Black Prada bag',
      price: 100,
      imageUrl:
          'https://i.pinimg.com/236x/24/23/a3/2423a3e6aca074b257214d002bb90e3f.jpg',
    ),
  ];

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }
}
