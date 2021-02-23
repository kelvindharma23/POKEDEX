import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/widgets/pokemonGirdItem.dart';

class DetailsScreen extends StatelessWidget {
  final Pokemon pokemon;

  DetailsScreen({this.pokemon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(pokemon.name),
        backgroundColor: Colors.pink[700],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.orangeAccent, shape: BoxShape.circle),
                child: Hero(
                  tag: pokemon.number,
                  child: Image.network(pokemon.image),
                )),
            SizedBox(height: 15),
            Text(
              pokemon.name,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text("Height : " + pokemon.height,
                style: TextStyle(fontSize: 15, color: Colors.orangeAccent)),
            SizedBox(height: 10),
            Text("Weight : " + pokemon.weight,
                style: TextStyle(fontSize: 15, color: Colors.orangeAccent)),
          ],
        ),
      ),
    );
  }
}
