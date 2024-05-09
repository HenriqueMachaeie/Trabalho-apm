import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/seed.dart';
import 'package:meals/providers/favorite_providers.dart';

class SeedDetailsScreen extends ConsumerWidget{
  const SeedDetailsScreen( {
    super.key,
    required this.semente,

  });

  final Seed semente;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    final favoriteMeals = ref.watch(favoriteMealsProvider);
    final isFavorite = favoriteMeals.contains(semente);

    return Scaffold(
      appBar: AppBar(
          title: Text(semente.title),
          actions:[
            IconButton(onPressed: (){
             final wasAdded = ref
                  .read(favoriteMealsProvider.notifier)
                  .toggleMealFavoriteStatus(semente);

              {
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(wasAdded ? 'Semente adicionada como favorito' : 'semente removida'),
                  ),
                );
              }
              },
              icon:  AnimatedSwitcher(
                duration:const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return RotationTransition(
                      turns: Tween<double>(
                        begin: 0.5,
                        end: 1.0
                      ).animate(animation),
                      child: child);
                },
                child:Icon(isFavorite ? Icons.star : Icons.star_border,key: ValueKey(isFavorite),
                ),
              ),
            )
          ]
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Hero(tag: semente.id,
              child: Image.network(
                semente.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 14),
            Text('Propriedades',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 14),
            for(final ingredient in semente.properties)
              Text(
                ingredient,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground
                ),
              ),
            const SizedBox(height: 24),
            Text('Benefícios para a saúde',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 14),
            for(final step in semente.benefits)
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8
                ),
                child: Text(
                  step,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }


}