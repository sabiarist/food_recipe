import 'package:flutter/material.dart';
import 'package:food_recipe/models/recipe.api.dart';
import 'package:food_recipe/models/recipe.dart';
import 'package:food_recipe/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isloading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.restaurant_menu),
              SizedBox(
                width: 10,
              ),
              Text('Food Recipe'),
            ],
          ),
        ),
        body: _isloading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
              itemCount: _recipes.length,
              itemBuilder: (context, index){
                return RecipeCard(
                  title: _recipes[index].name,
                  rating: _recipes[index].rating.toString(),
                  cookTime: _recipes[index].totalTime,
                  thumbnailUrl:  _recipes[index].images,
                );
                },
        ),
    );
  }
}
