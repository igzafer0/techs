import 'package:json_annotation/json_annotation.dart';
import 'package:techs/domain/entity/blog_entity/blog_entity.dart';
part 'blog_model.g.dart';

@JsonSerializable()
class BlogModel {
  @JsonKey(name: "title")
  String? title;

  BlogModel(this.title);

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  BlogEntity toEntity() => BlogEntity(title ?? "");

  Map<String, dynamic> toJson() => _$BlogModelToJson(this);
}
