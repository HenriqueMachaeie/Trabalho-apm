import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/seed.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Seed>>{
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatus(Seed meal){
      final mealsIsFavorite = state.contains(meal);

      if(mealsIsFavorite){
        state = state.where((m) => m.id != meal.id).toList();
        return false;
      }else{
        state = [...state, meal];
        return true;
      }
  }
}

final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Seed>>((ref){
  return FavoriteMealsNotifier();
});