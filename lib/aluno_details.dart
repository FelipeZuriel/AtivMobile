import "package:flutter/material.dart";
import "aluno.dart";

class AlunoDetalhe extends StatefulWidget {
  final Aluno aluno;

  const AlunoDetalhe({
    Key? key,
    required this.aluno,
  }) : super(key: key);

  @override
  _AlunoDetalheState createState() {
    return _AlunoDetalheState();
  }
}

class _AlunoDetalheState extends State<AlunoDetalhe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.aluno.nome),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(widget.aluno.urlImage),
              ),
              Text(widget.aluno.description),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.aluno.disciplina.length,
                  itemBuilder: (BuildContext context, int index) {
                    final disciplina = widget.aluno.disciplina[index];
                    return Text(
                        'Disciplina: ${disciplina.nome}\nNota: ${disciplina.nota}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontFamily: 'RobotoSlab'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
