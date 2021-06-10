class Animal {
  String id;
  String nome;
  String raca;
  String cor;
  String sexo;
  String idade;
  String porte;
  String especie;
  String descricao;
  String imagem;
  String status;

  Animal(
      {this.id,
      this.nome,
      this.raca,
      this.cor,
      this.sexo,
      this.idade,
      this.porte,
      this.especie,
      this.descricao,
      this.imagem,
      this.status});

  //RECEBE um Json e transforma em USUÁRIO
  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    raca = json['raca'];
    cor = json['cor'];
    sexo = json['sexo'];
    idade = json['idade'];
    porte = json['porte'];
    especie = json['especie'];
    descricao = json['descricao'];
    imagem = json['imagem'];
    status = json['status'];
  }

  //Transforma o usuário em um Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['raca'] = this.raca;
    data['cor'] = this.cor;
    data['sexo'] = this.sexo;
    data['idade'] = this.idade;
    data['porte'] = this.porte;
    data['especie'] = this.especie;
    data['descricao'] = this.descricao;
    data['imagem'] = this.imagem;
    data['status'] = this.status;
    return data;
  }
}
