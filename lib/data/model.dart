class Data {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  const Data({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'avatar': avatar,
    };
  }

  @override
  String toString() {
    return 'Data{id: $id, email: $email, first_name: $first_name, last_name: $last_name, avatar: $avatar}';
  }
}
