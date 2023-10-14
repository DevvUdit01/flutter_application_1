import 'package:flutter_application_1/models/catalog.dart';

class CartModel {

 // Private constructor for the singleton pattern
  CartModel._internal();

  // The single instance of CartModel
  static final CartModel cartModel = CartModel._internal();

  // Factory constructor to return the single instance
  factory CartModel() {
    return cartModel;
  }

  //catalog field
  CatalogModel _catalog=CatalogModel();

  // Collection of IDs - store all IDs of each item
  final List<String> _itemIds = [];

  // Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

List<Item>get items => _itemIds.map((id) => _catalog.getById(id)).toList();

//get total price
num get totalPrice => items.fold(0, (total, current) => total+current.price);

//add Item
void add(Item item){
  _itemIds.add(item.id);
}

//remove Item 
void remove(Item item){
  _itemIds.remove(item.id);
}
}
