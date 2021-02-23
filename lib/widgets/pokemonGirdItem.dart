import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/screens/details.screen.dart';

class PokemonGirdItem extends StatelessWidget {
  final Pokemon pokemon;

  PokemonGirdItem({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.orangeAccent, shape: BoxShape.circle),
            child: Hero(
              tag: pokemon.number,
              child: Image.network(pokemon.image),
            ),
          ),
          Text(pokemon.name,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold)),
          Text(pokemon.number, style: TextStyle(color: Colors.orange[600])),
        ],
      ),
    );
  }
}
