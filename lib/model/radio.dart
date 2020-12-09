import 'dart:convert';

import 'package:collection/collection.dart';

class MyRadioList {
  final List<MyRadio> radios;
  MyRadioList({
    this.radios,
  });

  MyRadioList copyWith({
    List<MyRadio> radios,
  }) {
    return MyRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory MyRadioList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MyRadioList(
      radios: List<MyRadio>.from(map['radios']?.map((x) => MyRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadioList.fromJson(String source) => MyRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'MyradioList(radios: $radios)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return o is MyRadioList &&
      listEquals(o.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class MyRadio {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String desc;
  final String url;
  final String category;
  final String icons;
  final String image;
  final String lang;
  MyRadio({
    this.id,
    this.order,
    this.name,
    this.tagline,
    this.desc,
    this.url,
    this.category,
    this.icons,
    this.image,
    this.lang,
  });

  MyRadio copyWith({
    int id,
    int order,
    String name,
    String tagline,
    String desc,
    String url,
    String category,
    String icons,
    String image,
    String lang,
  }) {
    return MyRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      icons: icons ?? this.icons,
      image: image ?? this.image,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order': order,
      'name': name,
      'tagline': tagline,
      'desc': desc,
      'url': url,
      'category': category,
      'icons': icons,
      'image': image,
      'lang': lang,
    };
  }

  factory MyRadio.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MyRadio(
      id: map['id'],
      order: map['order'],
      name: map['name'],
      tagline: map['tagline'],
      desc: map['desc'],
      url: map['url'],
      category: map['category'],
      icons: map['icons'],
      image: map['image'],
      lang: map['lang'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MyRadio.fromJson(String source) => MyRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MyRadio(id: $id, order: $order, name: $name, tagline: $tagline, desc: $desc, url: $url, category: $category, icons: $icons, image: $image, lang: $lang)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is MyRadio &&
      o.id == id &&
      o.order == order &&
      o.name == name &&
      o.tagline == tagline &&
      o.desc == desc &&
      o.url == url &&
      o.category == category &&
      o.icons == icons &&
      o.image == image &&
      o.lang == lang;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      order.hashCode ^
      name.hashCode ^
      tagline.hashCode ^
      desc.hashCode ^
      url.hashCode ^
      category.hashCode ^
      icons.hashCode ^
      image.hashCode ^
      lang.hashCode;
  }
}
