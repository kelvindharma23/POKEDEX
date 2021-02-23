import 'package:flutter/widgets.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/widgets/pokemonGirdItem.dart';

class HomeScreen extends StatelessWidget {
  final List<Pokemon> pokemons;

  HomeScreen({this.pokemons});

  @override
  Widget build(BuildContext context) {
    // Map the list of Pokémons to a list of Text widgets
    List<Widget> list =
        pokemons.map((p) => PokemonGirdItem(pokemon: p)).toList();

    // Show the Text widgets in a Column widget
    return GridView.count(crossAxisCount: 2, children: list);
  }
}
