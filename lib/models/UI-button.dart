import 'dart:convert';

import 'package:flutter/cupertino.dart';

class UIIconButton {
  final Function f;
  final IconData icon;
  UIIconButton({
    this.f,
    this.icon,
  });

  UIIconButton copyWith({
    String name,
    int person,
  }) {
    return UIIconButton(
      f: name ?? this.f,
      icon: person ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': f,
      'person': icon,
    };
  }

  factory UIIconButton.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return UIIconButton(
      f: map['name'],
      icon: map['person']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory UIIconButton.fromJson(String source) => UIIconButton.fromMap(json.decode(source));

  @override
  String toString() => 'UIButton(name: $f, person: $icon)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is UIIconButton &&
      o.f == f &&
      o.icon == icon;
  }

  @override
  int get hashCode => f.hashCode ^ icon.hashCode;
}