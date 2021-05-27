class FirebaseServicos {
  //Rotas do servidor
  static const signUp =
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyD5Z7xHVetZMmZYtEGK9nOSpzm1lJi_6bk";

  static const login =
      "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD5Z7xHVetZMmZYtEGK9nOSpzm1lJi_6bk";

  static Uri url =
      Uri.http('pet-adote-33f93-default-rtdb.firebaseio.com', '/usuarios.json');
      
}
