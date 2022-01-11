import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  List _lista = ['Teste1','Teste2','Teste3', 'Teste4'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('W I D G E T S'),),
        body: Column(
          children: [
            Expanded(child: ListView.builder(
                itemCount: _lista.length,
                itemBuilder: (context, index){

                  final item = _lista[index];

            return Dismissible(
                background: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      )
                    ],),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Icon(
                      Icons.clear,
                       color: Colors.white,
                    )
                  ],),
                ),
                // direction: DismissDirection.horizontal,
                onDismissed: (direction){
                  if( direction == DismissDirection.endToStart){
                    print('Direita Esquerda');
                  }else if( direction == DismissDirection.startToEnd){
                    print('Esquerda Direita');
                  }
                },
                key: Key(item),
                child: ListTile(
                  title: Text(item),
                ));
                }))
          ],
        ),
    );
  }
}
