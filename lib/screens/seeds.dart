import 'package:meals/models/seed.dart';
import 'package:flutter/material.dart';
import 'package:meals/widgets/seed_item.dart';
import 'package:meals/screens/seed_details.dart';


class SeedScreen extends StatelessWidget {
    const SeedScreen({
    super.key,
    this.title,
    required this.sementes,


  });
  final String? title;
  final List<Seed> sementes;


  void selectMeal(BuildContext context,Seed meal){
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (ctx) => SeedDetailsScreen(
              semente: meal,

            ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemBuilder: (ctx, index) => Text(sementes[index].title),
    );

    if (sementes.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('upps! ainda nao ha semente para essa seccao',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),),
            const SizedBox(height: 16),
            Text(
              'Tente selecionar uma categoria diferente.',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
      );
    }

    if (sementes.isNotEmpty) {
      content = ListView.builder(
        itemCount: sementes.length,
        itemBuilder: (ctx, index) => MealItem(meal: sementes[index],
          onSelectMeal: (context,meal){
            selectMeal(context,meal);
          },),
      );
    }

    if(title == null){
      return content;
    }
    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: content,
    );
  }
}
