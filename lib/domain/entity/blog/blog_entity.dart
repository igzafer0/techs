import 'package:flutter/material.dart';
import 'package:techs/domain/entity/item/item_entity.dart';

@immutable
final class BlogEntity {
  final String title;
  final List<ItemEntity> item;
  const BlogEntity(this.title, this.item);
}
