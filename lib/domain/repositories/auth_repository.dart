abstract interface class IAuthRepository {
  Future<bool> login(String email, String password);
  Future<bool> register(String name, String email, String password);
}
