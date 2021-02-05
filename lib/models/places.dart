import 'dart:convert';

import 'package:flutter/foundation.dart';

class MyPlacesList {
  final List<Places> places;
  MyPlacesList({
    this.places,
  });

  MyPlacesList copyWith({
    List<Places> places,
  }) {
    return MyPlacesList(
      places: places ?? this.places,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'places': places?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory MyPlacesList.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MyPlacesList(
      places: List<Places>.from(map['places']?.map((x) => Places.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MyPlacesList.fromJson(String source) =>
      MyPlacesList.fromMap(json.decode(source));

  @override
  String toString() => 'MyPlacesList(places: $places)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MyPlacesList && listEquals(o.places, places);
  }

  @override
  int get hashCode => places.hashCode;
}

class Places {
  final int id;
  final String name;
  final String image;
  Places({
    this.id,
    this.name,
    this.image,
  });

  Places copyWith({
    int id,
    String name,
    String image,
  }) {
    return Places(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory Places.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Places(
      id: map['id'],
      name: map['name'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Places.fromJson(String source) => Places.fromMap(json.decode(source));

  @override
  String toString() => 'Places(id: $id, name: $name, image: $image)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Places && o.id == id && o.name == name && o.image == image;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ image.hashCode;
}
