import 'package:product_list/helper/helper.dart';
import 'package:product_list/modules/model/ListModel.dart';

class HomeScreenRepository{
 static getJson(String filename){
    return Helper.getJsonFile('assets/$filename.json').then((value) => ListModel.fromJson(value));
  }
}