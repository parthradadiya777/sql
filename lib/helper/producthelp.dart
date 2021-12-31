import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sql/model/productmodel.dart';

// First step

class Producthelper {
  static Producthelper? _producthelper;
  static Database? _database;
  String productTable = 'Product_table';
  String colId = 'id';
  String colname = 'name';
  String coltitle = 'title';

  Producthelper._createInstance();

  static final Producthelper instance = Producthelper._createInstance();

  /// Second step
  factory Producthelper() {
    // ignore: prefer_conditional_assignment
    if (_producthelper == null) {
      _producthelper = Producthelper._createInstance();
    }
    return _producthelper!;
  }
  // Third setp
  Future<Database> get database async {
    // ignore: prefer_conditional_assignment
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  // forth step
  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'product.db';

    var notesdatabase =
        await openDatabase(path, version: 1, onCreate: _createdb);

    return notesdatabase;
  }

// fifth setp
  void _createdb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $productTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colname TEXT, $coltitle TEXT)');
  }

// Sixth step (query)
  Future<List<Map<String, dynamic>>> getProductMapList() async {
    // ignore: unnecessary_this
    Database db = await this.database;

    var result = await db.query(productTable);

    return result;
  }

// seventh step (insert)
  Future<int> insertProduct(Product product) async {
    // ignore: unnecessary_this
    Database db = await this.database;

    var result = db.insert(productTable, product.tomap());

    return result;
  }
}
