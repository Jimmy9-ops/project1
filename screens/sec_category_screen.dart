import 'package:flutter/material.dart';
import '../widgets/sec_category_item.dart';
import '../dummy_data.dart';

class SecondCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final filteredCategories = SEC_CATRGORIES.where((secondCategory) {
      return secondCategory.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return SecCategoryItem(
            filteredCategories[index].id,
            filteredCategories[index].title,
            filteredCategories[index].imageUrl,
          );
        },
        itemCount: filteredCategories.length,
      ),
    );
  }
}
