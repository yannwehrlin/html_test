import 'dart:math';

import 'package:flutter/material.dart';
import 'package:html_test/cat.dart';
import 'package:html_test/sfo.dart';
import 'package:flutter_html/flutter_html.dart';

class CatPage extends StatelessWidget {
  final Cat cat;
  final List<Cat> categories;

  CatPage({required this.cat, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Html(data: cat.introduction),
            SizedBox(height: 16),
            if (cat.questionsHelper.isNotEmpty) ...[
              Html(data: cat.questionsHelper),
              SizedBox(height: 16),
            ],
            if (cat.children.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sélection:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  ...cat.children
                      .map((childId) => categories.firstWhere(
                            (category) => category.wid == childId,
                            // Returns null if no match is found
                          ))
                      .map((childCat) => ListTile(
                            title: Text(childCat.title),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CatPage(
                                      cat: childCat, categories: categories),
                                ),
                              );
                            },
                          ))
                      .toList(),
                ],
              ),
            if (cat.othercats.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Other Categories:",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  ...cat.othercats.map((otherId) {
                    final otherCat = categories.firstWhere(
                      (cat) => cat.wid == otherId,
                    );
                    return ListTile(
                      title: Text(otherCat?.title ?? "Unknown Page"),
                      onTap: otherCat != null
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CatPage(
                                      cat: otherCat, categories: categories),
                                ),
                              );
                            }
                          : null,
                    );
                  }).toList(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Pages',
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<Cat> mainCategories = updateCatStateVariable()!
      .map((e) => Cat.fromMap(e))
      .where((element) => element.isRoot)
      .toList();

  final List<Cat> categories =
      updateCatStateVariable()!.map((e) => Cat.fromMap(e)).toList();

  late final List<Map<String, dynamic>> jsonData;

  @override
  void initState() {
    super.initState();
    jsonData = updateCatStateVariable() as List<Map<String, dynamic>>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catégories'),
      ),
      body: ListView.builder(
        itemCount: mainCategories.length,
        itemBuilder: (context, index) {
          final category = mainCategories[index];
          return ListTile(
            title: Text(category.title),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Navigation vers la CatPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CatPage(cat: category, categories: categories),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
