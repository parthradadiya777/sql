class Product {
  int? _id;
  String? _name;
  String? _title;

  Product(this._id, this._name, this._title);

  // get set in id
  int get id => _id!;

  set id(int value) {
    _id = value;
  }

  // get set in name
  String get name => _name!;

  set name(String value) {
    _name = value;
  }

  // get set in title
  // ignore: recursive_getters
  String get title => title;

  set title(String value) {
    _title = value;
  }

  Map<String, dynamic> tomap() {
    // ignore: prefer_collection_literals
    var map = Map<String, dynamic>();

    map['id'] = _id;
    map['name'] = _name;
    map['title'] = _title;

    return map;
  }

  Product.fromMapObject(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _title = map['title'];
  }
}
