import 'package:flutter/material.dart';

@immutable
final class ItemEntity {
  final String id;
  final String title;
  final ImageEntity image;
  final Uri link;
  const ItemEntity(this.id, this.title, this.image, this.link);
}

@immutable
final class ImageEntity {
  final String url;
  const ImageEntity(this.url);
}
