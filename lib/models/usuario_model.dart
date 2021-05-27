class Usuario{

  String nome;
  String cpf;
  String tel;
  String email;
  String senha;
  bool keepOn;

  Usuario(
      {this.nome, this.cpf, this.tel, this.email, this.senha, this.keepOn});

  Usuario.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    cpf = json['cpf'];
    tel = json['tel'];
    email = json['email'];
    senha = json['senha'];
    keepOn = json['keepOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['cpf'] = this.cpf;
    data['tel'] = this.tel;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['keepOn'] = this.keepOn;
    return data;
  }

}
