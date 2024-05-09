import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/seed.dart';

class CarrinhoMealsNotifier extends StateNotifier<List<Seed>>{
  CarrinhoMealsNotifier() : super([]);

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

final favoriteMealsProvider = StateNotifierProvider<CarrinhoMealsNotifier, List<Seed>>((ref){
  return CarrinhoMealsNotifier();
});