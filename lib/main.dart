import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
 var listNama = [
'Salsabila Ika Nur Rohmah', 'Irham Maulana', 'Riki Nur Alim',
'Dipa Ismail', 'Sri Mulyaningsih'
];
var listWarna = [
Colors.red, Colors.purple, Colors.teal, Colors.lime,
Colors.indigo, Colors.deepPurple, Colors.cyan,
];
int index = 0;

void incrementIndex () {
setState(() {
index++;
});
}
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: listWarna[index % listWarna.length]),
        )
      ],
    );
  }
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: teksUtama,
        ),
        floatingActionButton: FloatingActionButton(
tooltip: 'Refresh',
child: Icon(Icons.refresh),onPressed: teksUtama.state.incrementIndex,

),
      )
      )
      );

}

class TeksUtama extends StatefulWidget {

final state = StateTeksUtama();

@override
State<StatefulWidget> createState() => state;
}