import 'package:dite_helper/db/foods_alternative.dart';
import 'package:flutter/material.dart';

import '../models/food_model.dart';

class MealModel {
  String name;
  List<FoodModel> foodModels;

  MealModel(this.name, this.foodModels);
}

class ExpansionPanelItem {
  ExpansionPanelItem({
    required this.headerValue,
    required this.mealModel,
    this.isExpanded = false,
  });

  String headerValue;
  MealModel mealModel;
  bool isExpanded;
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // State variables for the selected meal and food
  MealModel? selectedMeal;
  FoodModel? selectedFood;
  late List<bool> _expansionPanelItems;

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = [false , false , false , false];
  }

  void replaceFoodWithAlternative() {}

  void _showCurrentPlan() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Food Models Manager'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: _showCurrentPlan,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: ExpansionPanelList(
            elevation: 1,
            expandedHeaderPadding: const EdgeInsets.all(0),
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _expansionPanelItems[index] = !isExpanded;
              });
            },
            children:[
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text("Break Fast"),
                  );
                },
                body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButtonFormField<FoodModel>(
                    items: FoodAlternative.carbohydrate
                        .map((alternative) => DropdownMenuItem<FoodModel>(
                              value: alternative,
                              child: Text(alternative.name),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        //item.selectedAlternative = value;
                        // selectedMeal = item.mealModel;
                        // selectedFood = model;
                        // if (item.selectedAlternative != null) {
                        //   replaceFoodWithAlternative(
                        //       model, item.selectedAlternative!);
                      });
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                isExpanded: _expansionPanelItems[0],
              ),

              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text("Lunch"),
                  );
                },
                body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButtonFormField<FoodModel>(
                    items: FoodAlternative.carbohydrate
                        .map((alternative) => DropdownMenuItem<FoodModel>(
                      value: alternative,
                      child: Text(alternative.name),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        //item.selectedAlternative = value;
                        // selectedMeal = item.mealModel;
                        // selectedFood = model;
                        // if (item.selectedAlternative != null) {
                        //   replaceFoodWithAlternative(
                        //       model, item.selectedAlternative!);
                      });
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                isExpanded: _expansionPanelItems[1],
              ),

              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text("Dinner"),
                  );
                },
                body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButtonFormField<FoodModel>(
                    items: FoodAlternative.carbohydrate
                        .map((alternative) => DropdownMenuItem<FoodModel>(
                      value: alternative,
                      child: Text(alternative.name),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        //item.selectedAlternative = value;
                        // selectedMeal = item.mealModel;
                        // selectedFood = model;
                        // if (item.selectedAlternative != null) {
                        //   replaceFoodWithAlternative(
                        //       model, item.selectedAlternative!);
                      });
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                isExpanded: _expansionPanelItems[2],
              ),

              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return const ListTile(
                    title: Text("Snack"),
                  );
                },
                body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: DropdownButtonFormField<FoodModel>(
                    items: FoodAlternative.carbohydrate
                        .map((alternative) => DropdownMenuItem<FoodModel>(
                      value: alternative,
                      child: Text(alternative.name),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        //item.selectedAlternative = value;
                        // selectedMeal = item.mealModel;
                        // selectedFood = model;
                        // if (item.selectedAlternative != null) {
                        //   replaceFoodWithAlternative(
                        //       model, item.selectedAlternative!);
                      });
                    },
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                isExpanded: _expansionPanelItems[3],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
