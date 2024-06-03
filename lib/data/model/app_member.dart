class AppMember {
  String? accessToken;
  String? refreshToken;

  AppMember({
    this.accessToken,
    this.refreshToken,
  });

  AppMember copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return AppMember(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
