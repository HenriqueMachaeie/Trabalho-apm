import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:meals/providers/meals_provider.dart';

enum Filter{
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FilterNotifier extends StateNotifier<Map<Filter,bool>>{
  FilterNotifier() : super({
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegetarian: false,
    Filter.vegan: false
  });

  void setFilters(Map<Filter,bool> chosenFilters){
    state = chosenFilters;
  }

  void setFilter(Filter filter,bool isActive){
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider = StateNotifierProvider<FilterNotifier,Map<Filter,bool>>(
        (ref) => FilterNotifier());


final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  return meals.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isOrganica){
      return false;
    }

    //lactose
    if (activeFilters[Filter.lactoseFree]! && !meal.isHeranca){
      return false;
    }

    //vegetarian
    if (activeFilters[Filter.vegetarian]! && !meal.isPlantioDomestico){
      return false;
    }

    //vegan
    if (activeFilters[Filter.vegan]! && !meal.isCultivoSustentavel){
      return false;
    }
    return true;
  }).toList();
});