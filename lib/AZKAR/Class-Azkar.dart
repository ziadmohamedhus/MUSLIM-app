class Azkar {
  int id;
  String name;
  Azkar(this.id, this.name);

  Azkar.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }
}