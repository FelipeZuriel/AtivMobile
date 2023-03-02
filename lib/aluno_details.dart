import 'package:flutter/material.dart';
import 'aluno.dart';

class AlunoDetail extends StatefulWidget {
  final Aluno aluno;

  const AlunoDetail({
    Key? key,
    required this.aluno,
  }) : super(key:key);

  @override
  _AlunoDetailState createState(){
    return _AlunoDetailState()
  }
}

class _AlunoDetailState extends State<AlunoDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.aluno.nome),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget> Text("Teste"),
        )
      ),
    );
  }
}
