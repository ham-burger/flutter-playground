import 'package:isar/isar.dart';

part 'item.g.dart';

@collection
class Item {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(type: IndexType.value)
  String? name;

  List<Sku> skus = [];

  @enumerated
  Status status = Status.draft;
}

@embedded
class Sku {
  String? name;
  String? address;
}

enum Status {
  draft,
  sell,
}
