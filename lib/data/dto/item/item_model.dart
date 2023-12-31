import 'dart:math';

import 'package:json_annotation/json_annotation.dart';
import 'package:techs/domain/entity/item/item_entity.dart';
part "item_model.g.dart";

@JsonSerializable()
class ItemModel {
  dynamic id;
  String? title;
  ImageModel? image;
  String? authorTitle;
  Uri? link;
  ItemModel({this.id, this.title, this.image, this.link});
  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
  ItemEntity toEntity() {
    return ItemEntity(
      id == null ? (Random().nextInt(58725) + 30000).toString() : id.toString(),
      title ?? "",
      authorTitle ?? "",
      image != null ? image!.toEntity() : ImageModel().toEntity(),
      link ?? Uri(),
    );
  }

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}

@JsonSerializable()
class ImageModel {
  String? url;
  ImageModel({this.url});
  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);
  ImageEntity toEntity() => ImageEntity(url ?? "");
  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
