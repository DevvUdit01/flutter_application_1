import 'package:flutter_application_1/models/Cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  CatalogModel catalog=CatalogModel();
  CartModel cart=CartModel();

  MyStore(){
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}