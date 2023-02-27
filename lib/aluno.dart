class Aluno {
  String nome;
  String urlImage;
  String description;

  Aluno(this.nome, this.urlImage, this.description);

  static List<Aluno> exemplos = [
    Aluno(
        'Fênix',
        'http://pm1.narvii.com/6434/48938bc0cd563773f33c3f738ce6f8ced1901b8a_00.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when'),
    Aluno(
        'Grifo',
        'https://mitologiagrega.net.br/wp-content/uploads/2016/11/mitologia-grega-hibridos-grifo.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
    Aluno(
        'Snakly',
        'https://25.media.tumblr.com/tumblr_m6jpi9Ao8h1qecs4bo1_1280.jpg',
        'Loodaiienndapw opeiie peofjawknd oawidawd pawodjwkdnw awdjwakldnwakldwkadfiwab'),
    Aluno(
        'Fênix',
        'http://pm1.narvii.com/6434/48938bc0cd563773f33c3f738ce6f8ced1901b8a_00.jpg',
        'Loodaiienndapw opeiie peofjawknd oawidawd pawodjwkdnw awdjwakldnwakldwkadfiwab'),
  ];
}
