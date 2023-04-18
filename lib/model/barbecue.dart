// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Barbecue {
  String label;
  bool isReserved;
  
  Barbecue({
    required this.label,
     this.isReserved = false,
  });

  Barbecue copyWith({
    String? label,
    bool? isReserved,
  }) {
    return Barbecue(
      label: label ?? this.label,
      isReserved: isReserved ?? this.isReserved,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'isReserved': isReserved,
    };
  }

  factory Barbecue.fromMap(Map<String, dynamic> map) {
    return Barbecue(
      label: map['label'] as String,
      isReserved: map['isReserved'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Barbecue.fromJson(String source) => Barbecue.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Barbecue(label: $label, isReserved: $isReserved)';

  @override
  bool operator ==(covariant Barbecue other) {
    if (identical(this, other)) return true;
  
    return 
      other.label == label &&
      other.isReserved == isReserved;
  }

  @override
  int get hashCode => label.hashCode ^ isReserved.hashCode;
}
