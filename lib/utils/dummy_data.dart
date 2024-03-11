import 'package:pokebook/models/poke_model.dart';

List<PokeModel> generateDummyData() {
  return [
    const PokeModel(
      name: 'Charizard',
      types: ['🔥Fire', '🦋Flying'],
      about: {
        'Height': '1.7m',
        'Weight': '90.5kg',
        'Abilities': 'Blaze, Solar Power',
      },
      statistics: {
        'HP': 78,
        'Attack': 84,
        'Defense': 78,
        'Special Attack': 109,
        'Special Defense': 85,
        'Speed': 100,
      },
      similar: [
        {'name': 'Charmander', 'imageUrl': 'assets/poke/tortoise.svg'},
        {'name': 'Charmeleon', 'imageUrl': 'assets/poke/turtle.svg'}
      ],
      imageUrl: 'assets/poke/dragon.svg',
    ),
    const PokeModel(
      name: 'Ivysaur',
      types: ['🌿Grass', '💀Poison'],
      about: {
        'Height': '0.99m',
        'Weight': '13.0kg',
        'Abilities': 'Overgrow, Chlorophyll',
      },
      statistics: {
        'HP': 60,
        'Attack': 62,
        'Defense': 63,
        'Special Attack': 80,
        'Special Defense': 80,
        'Speed': 60,
      },
      similar: [
        {'name': 'Bulbasaur', 'imageUrl': 'assets/poke/cutter.svg'},
        {'name': 'Venusaur', 'imageUrl': 'assets/poke/tortose.svg'}
      ],
      imageUrl: 'assets/poke/mouse.svg',
    ),
    const PokeModel(
      name: 'Beedrill',
      types: ['🐞 Bug', '💀Poison'],
      about: {
        'Height': '1.0m',
        'Weight': '29.5kg',
        'Abilities': 'Swarm, Sniper',
      },
      statistics: {
        'HP': 65,
        'Attack': 90,
        'Defense': 40,
        'Special Attack': 45,
        'Special Defense': 80,
        'Speed': 75,
      },
      similar: [
        {'name': 'Weedle', 'imageUrl': 'assets/poke/dragon.svg'},
      ],
      imageUrl: 'assets/poke/bee.svg',
    ),
    const PokeModel(
      name: 'Raticate',
      types: ['🐻 Normal'],
      about: {
        'Height': '0.7m',
        'Weight': '18.5kg',
        'Abilities': 'Run Away, Guts',
      },
      statistics: {
        'HP': 55,
        'Attack': 81,
        'Defense': 60,
        'Special Attack': 50,
        'Special Defense': 70,
        'Speed': 97,
      },
      similar: [
        {'name': 'Rattata', 'imageUrl': 'assets/poke/tortose.svg'}
      ],
      imageUrl: 'assets/poke/cutter.svg',
    ),
  ];
}
