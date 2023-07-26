class ListModel {
  ListModel({
      this.data,});

  ListModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.title, 
      this.price, 
      this.image, 
      this.description,});

  Data.fromJson(dynamic json) {
    title = json['title'];
    price = json['price'];
    image = json['image'];
    description = json['description'];
  }
  String? title;
  double? price;
  String? image;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['price'] = price;
    map['image'] = image;
    map['description'] = description;
    return map;
  }

}