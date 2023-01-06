class DbConfigEntity {
  final int port;
  final String host;
  final String user;
  final String dbname;
  final String password;

  DbConfigEntity({
    required this.port,
    required this.host,
    required this.user,
    required this.dbname,
    required this.password,
  });
}
