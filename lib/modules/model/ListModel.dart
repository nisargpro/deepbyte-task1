/// data : [{"title":"Test1","price":15.02,"image":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1689329941/images/image/zk8dpahejxhmgqrptxy7.jpg","description":"orem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"},{"title":"Test1","price":15.02,"image":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1689329941/images/image/zk8dpahejxhmgqrptxy7.jpg","description":"orem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"},{"title":"Test1","price":15.02,"image":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1689329941/images/image/zk8dpahejxhmgqrptxy7.jpg","description":"orem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"},{"title":"Test1","price":15.02,"image":"https://res.cloudinary.com/dbrvq9uxa/image/upload/v1689329941/images/image/zk8dpahejxhmgqrptxy7.jpg","description":"orem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"}]

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

/// title : "Test1"
/// price : 15.02
/// image : "https://res.cloudinary.com/dbrvq9uxa/image/upload/v1689329941/images/image/zk8dpahejxhmgqrptxy7.jpg"
/// description : "orem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available"

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