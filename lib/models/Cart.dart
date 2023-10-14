import 'package:flutter_application_1/Core/store..dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {

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

}



class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore>{
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}


