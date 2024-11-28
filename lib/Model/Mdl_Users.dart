class MdlUsers {
  int? id;
  String? name;
  String? contact;
  String? description;

  usermap() {
    var Mapping = Map<String, dynamic>();
    Mapping['id'] = id ?? null;
    Mapping['name'] = name!;
    Mapping['contact'] = contact!;
    Mapping['description'] = description!;
    return Mapping;
  }
}
