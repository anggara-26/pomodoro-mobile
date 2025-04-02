import 'package:fokusin/core/common/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.firebaseUID,
    required super.email,
    required super.name,
    required super.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      firebaseUID: json['firebase_uid'] ?? '',
      email: json['email'] ?? '',
      name: json['name'] ?? '',
      createdAt: json['created_at'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firebase_uid': firebaseUID,
      'email': email,
      'name': name,
      'created_at': createdAt,
    };
  }

  UserModel copyWith({
    String? id,
    String? firebaseUID,
    String? email,
    String? name,
    String? createdAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      firebaseUID: firebaseUID ?? this.firebaseUID,
      email: email ?? this.email,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
