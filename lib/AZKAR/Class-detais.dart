class Details {
  int sectionId;
  String count;
  String description;
  String reference;
  String content;

  Details(this.sectionId, this.count, this.description, this.content,
      this.reference);

  Details.fromJson(Map<String, dynamic> json) {
    sectionId = json["section_id"];
    count = json["count"];
    description = json["description"];
    reference = json["reference"];
    content = json["content"];
  }
}