class Usuario {
  String id;
  String nome;
  String cpf;
  String tel;
  String email;
  String senha;
  String estado;
  String cidade;
  String bairro;
  String rua;
  String numero;
  String cep;
  String imagem;

  Usuario(
      {this.id,
      this.nome,
      this.cpf,
      this.tel,
      this.email,
      this.senha,
      this.estado,
      this.cidade,
      this.bairro,
      this.rua,
      this.numero,
      this.cep,
      this.imagem});

  //RECEBE um Json e transforma em USUÁRIO
  Usuario.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    cpf = json['cpf'];
    tel = json['tel'];
    email = json['email'];
    senha = json['senha'];
    estado = json['estado'];
    cidade = json['cidade'];
    bairro = json['bairro'];
    rua = json['rua'];
    numero = json['numero'];
    cep = json['cep'];
    imagem = json['imagem'];
  }

  //Transforma o usuário em um Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['cpf'] = this.cpf;
    data['celular'] = this.tel;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['estado'] = this.estado;
    data['cidade'] = this.cidade;
    data['bairro'] = this.bairro;
    data['rua'] = this.rua;
    data['numero'] = this.numero;
    data['cep'] = this.cep;
    data['imagem'] = this.imagem;
    return data;
  }

  Map<String, dynamic> toJsonEmail() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    return data;
  }
}
