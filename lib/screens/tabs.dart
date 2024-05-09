import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

import 'package:meals/screens/categories.dart';
import 'package:meals/screens/filters.dart';
import 'package:meals/screens/seeds.dart';
import 'package:meals/models/seed.dart';
import 'package:meals/widgets/main.drawer.dart';
import 'package:meals/data/dummy_data.dart';

import 'package:meals/providers/favorite_providers.dart';



const kInitialFilter = {
  Filter.glutenFree:  false,
  Filter.lactoseFree: false,
  Filter.vegetarian: false,
  Filter.vegan: false
};

class TabsScreen extends ConsumerStatefulWidget{

  @override
  ConsumerState<TabsScreen> createState() {
    // TODO: implement createState
    return _TabsScreenState();
  }

}

class _TabsScreenState extends ConsumerState<TabsScreen>{

  int _selectedPageIndex = 0;
  //Map<Filter,bool> _selectedFilters = kInitialFilter;




  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async{

    Navigator.of(context).pop();
    if(identifier == 'filters'){

      await Navigator.of(context).push<Map<Filter,bool>>(
        MaterialPageRoute(builder: (ctx) =>  const FiltersScreen (),
        ),
      );
      //print(result);


    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final availableMeals = ref.watch(filteredMealsProvider);

    Widget activePage =  CategoriesScreen(

      availableMeals: availableMeals,
    );
    var activePageTitle = 'Categorias';

    if(_selectedPageIndex == 1){
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage =  SeedScreen(sementes: favoriteMeals,
        );
      activePageTitle = 'Your Favorites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      drawer:  MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.set_meal), label:'Categorias' ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.add_card), label: 'Comprar'),
        ],
      ),
    );
  }

}