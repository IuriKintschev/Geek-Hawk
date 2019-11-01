class Product {
  String nome;
  String descricao;
  double price;
  String categoria;
  List<String> imagens;
  String cor;

  Product(
      {this.nome,
      this.descricao,
      this.price,
      this.categoria,
      this.imagens,
      this.cor});
}

final List<Product> produto = [
  Product(
      nome: 'Action - Naruto',
      descricao: 'Imagina vc ter o proprio hokage na sua estante cara',
      price: 86.60,
      categoria: 'action figures',
      imagens: ['assets/dataI/naruto.png'],
      cor: '0xff8844dd'),
  Product(
      nome: 'Camiseta H1Z1',
      descricao: 'Camiseta de algodao do irado jogo h1z1',
      price: 40.00,
      categoria: 'camisetas',
      imagens: ['assets/dataI/h1z11.png', 'assets/dataI/h1z12.png'],
      cor: '0xff13c47c'),
  Product(
      nome: 'Camiseta the walking dead',
      descricao:
          'Camiseta show de bola da famosa serie de zumbi onde o nosso querido cris(de todo mundo odeia o cris apareceu)',
      price: 32.00,
      categoria: 'camisetas',
      imagens: ['assets/dataI/cami_dead.png'],
      cor: '0xff8844dd'),
  Product(
      nome: 'Naruto muleke',
      descricao: 'Boneco de acao do Naruto modo pirralho',
      price: 95.00,
      categoria: 'action figures',
      imagens: ['assets/dataI/naruto2.png'],
      cor: '0xff8844dd'),
  Product(
      nome: 'Buneco One Piece',
      descricao:
          'Esse maluko e muito da hora ele fica paradao na estante mas e muito massa a pose',
      price: 98.00,
      categoria: 'action figures',
      imagens: ['assets/dataI/one.png'],
      cor: '0xff5d8aa8'),
  Product(
      nome: 'Action - Goku',
      descricao:
          'Boneco do gaku boladao, em modo saijyn 3, proto pra acabar com o majinbu',
      price: 95.00,
      categoria: 'action figures',
      imagens: ['assets/dataI/dbz.png'],
      cor: '0xff8844dd'),
  Product(
      nome: 'Action - Charizard',
      descricao:
          'Charizard boladao pronto para derreter no torneio da liga sinoh, e fazer finalmente o merda do Ash katchun da cidade de Pallet vencer cara',
      price: 100.00,
      categoria: 'action figures',
      imagens: ['assets/dataI/charizard.png'],
      cor: '0xff8844dd'),
];

class Categoria {
  String nome;
  String imagem;

  Categoria({this.nome, this.imagem});
}

final List<Categoria> categorias = [
  Categoria(
    nome: 'action figures',
    imagem: 'assets/dataI/g-3.png',
  ),
  Categoria(
    nome: 'camisetas',
    imagem: 'assets/dataI/g-1.png',
  ),
  Categoria(
    nome: 'tenis',
    imagem: 'assets/dataI/g-2.png',
  ),
  Categoria(
    nome: 'games',
    imagem: 'assets/dataI/g-6.png',
  ),
  Categoria(
    nome: 'calça',
    imagem: 'assets/dataI/g-4.png',
  ),
];
