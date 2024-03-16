import 'dart:convert';
import 'package:food_delivery_app/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    try {
      final response = await http.get(uri, headers: {
        "x-rapidapi-key": "bb5d14f9bdmsh2894289a9f74feep1c25cbjsnbfae616048ab",
        "x-rapidapi-host": "yummly2.p.rapidapi.com",
        "useQueryString": "true"
      });

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        List temp = [];

        for (var i in data['feed']) {
          temp.add(i['content']['details']);
        }

        return Recipe.recipesFromSnapshot(temp);
      } else {
        // If the server returns an error response, throw an exception.
        throw Exception('Failed to load recipes');
      }
    } catch (e) {
      // If an error occurs during the HTTP request, throw an exception.
      throw Exception('Failed to fetch data: $e');
    }
  }
}
