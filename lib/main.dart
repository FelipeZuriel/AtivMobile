import 'package:flutter/material.dart';
import 'aluno.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'First Starter App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  Widget buildAlunoCard(Aluno aluno) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(aluno.urlImage),
          Text(aluno.nome,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'RobotoMono')),
          Text(aluno.description,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15,
                  fontFamily: 'RobotoSlab')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: Aluno.exemplos.length,
          itemBuilder: (BuildContext context, int index) {
            return buildAlunoCard(Aluno.exemplos[index]);
            // return Text(Aluno.exemplos[index].nome);
          },
        ),
      ),
    );
  }
}
