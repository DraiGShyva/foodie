import 'package:flutter/material.dart';
import '../models/food_model.dart';

import '../components/food-item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _listColor = [Colors.red, Colors.yellow, Colors.green];
  final _listName = ['L', 'N', 'H'];
  late Color _selectUser;
  @override
  void initState() {
    super.initState();
    _selectUser = _listColor[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MENU"), centerTitle: true, actions: [
        ...List.generate(
            _listColor.length,
            (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectUser = _listColor[index];
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: _listColor[index],
                      child: Text(_listName[index]),
                    ),
                  ),
                ))
      ]),
      drawer: Drawer(
        child: Center(
          child: Row(
            children: [
              Column(
                children: const [
                  Text('1'),
                  Text('2'),
                ],
              ),
              Column(
                children: const [
                  Text('1'),
                  Text('2'),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Foodies',
                style: TextStyle(color: _selectUser, fontSize: 32.0),
              ),
              const SizedBox(height: 12.0),
              ListView.builder(
                physics:
                    const NeverScrollableScrollPhysics(), // khoong cho list cuon. voiws shrinkWrap
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 1,
                itemBuilder: (context, index) {
                  FoodModel food = foods[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.6),
                    child: FoodItem(
                      onPressed: () => print(food.id),
                      food: food,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
