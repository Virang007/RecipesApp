// ignore_for_file: avoid_print

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:recipes/recipes_model.dart';

recipesItems() async {
  Uri url = Uri.parse("https://dummyjson.com/recipes");
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = recipesModelFromJson(res.body);
      return data.recipes;
    } else {
      print("Error Occured");
    }
  } catch (e) {
    print(e.toString());
  }
}
