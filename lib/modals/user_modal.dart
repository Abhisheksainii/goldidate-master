class UserModal {
  final String userID;
  final String username;
  final String profileURL;
  final String emailAddress;

  UserModal({
    this.userID,
    this.username,
    this.profileURL,
    this.emailAddress,
  });

  factory UserModal.fromJson(Map<String, dynamic> json) => UserModal(
        userID: json["userID"],
        username: json["username"],
        emailAddress: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "userID": userID,
        "username": username,
        "email": emailAddress,
      };
}
