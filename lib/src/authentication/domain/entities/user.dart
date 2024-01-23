import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User(
      {required this.id,
      required this.createdAt,
      required this.name,
      required this.avatar});

  User.empty()
      : this(
            id: 1,
            createdAt: DateTime(1999, 1, 1),
            name: '_empty.name',
            avatar: '_empty.avatar');

  final int id;
  final DateTime createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [id];
}
