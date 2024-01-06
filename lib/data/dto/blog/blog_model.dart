import 'package:json_annotation/json_annotation.dart';
import 'package:techs/data/dto/item/item_model.dart';
import 'package:techs/domain/entity/blog/blog_entity.dart';
part 'blog_model.g.dart';

@JsonSerializable()
class BlogModel {
  @JsonKey(name: "title")
  String? title;
  List<ItemModel>? item;

  BlogModel({this.title, this.item});

  factory BlogModel.fromJson(Map<String, dynamic> json) => _$BlogModelFromJson(json);

  BlogEntity toEntity() {
    if (item != null) {
      for (var element in item!) {
        element.authorTitle = title ?? "";
      }
      var newItem = item!.map((e) => e.toEntity()).toList();
      return BlogEntity(title ?? "", newItem);
    }
    return BlogEntity(title ?? "", [ItemModel().toEntity()]);
  }

  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}
