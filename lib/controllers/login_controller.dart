class LoginController{



  bool validarUser(String email, String senha) {
    //Verificar aqui se o email e senha estão de acordo
    Map<String, dynamic> map;
    // map = (Aqui vem do db)
    //TEMP
    if (email == "fernandes@email.com" && senha == "123" || email == "fern" && senha == "123" ) {
      return true;
    } else {
      return false;
    }
  }



  
}