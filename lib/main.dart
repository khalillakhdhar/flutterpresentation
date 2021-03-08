import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: MystatelessWidget()));
}

class MystatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About me"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /* new Text("hello"),
            new Text("good morning"),
            new Text("good job"),
            */
            new MyCard(
              title: new Text(
                " looking for informations? ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.blue),
              ),
              icon: new Icon(Icons.search, size: 40),
              texte: new Text("Khalil Lakhdhar"),
            ),
            new MyCard(
              title: new Text(
                "My hobbies",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.blue),
              ),
              icon: new Icon(
                Icons.favorite,
                size: 40,
                color: Colors.red,
              ),
              texte: new Text("Kick boxing \n and gaming"),
            ),
            new MyCard(
              title: new Text(
                "My job",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.blue),
              ),
              icon: new Icon(
                Icons.computer,
                size: 40,
                color: Colors.blue,
              ),
              texte: new Text(
                  "I am a programmer \n IT coach and \n university instructor"),
            ),
            new MyInfo(
              title: new Text(
                "My Github account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.blueGrey),
              ),
              url: new Text(
                "https://github.com/khalillakhdhar/statelessdemo",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline),
              ),
              texte: new Text("Join my github for +200 source codes"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon, this.texte});
  final Widget icon;
  final Widget title;

  final Widget texte;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[this.icon, this.title, this.texte],
          ),
        ),
      ),
    );
  }
}

class MyInfo extends StatelessWidget {
  MyInfo({this.title, this.url, this.texte});
  final Widget url;
  final Widget title;

  final Widget texte;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.texte,
              this.url,
            ],
          ),
        ),
      ),
    );
  }
}
