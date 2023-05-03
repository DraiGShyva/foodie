import 'package:flutter/material.dart';
import '../models/food_model.dart';

class FoodItem extends StatefulWidget {
  final VoidCallback onPressed;
  final FoodModel food;

  const FoodItem({
    super.key,
    required this.onPressed,
    required this.food,
  });

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    const radius = 12.0;

    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.red, width: 1.2),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.shade600,
              offset: const Offset(0.0, 3.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Image.asset(widget.food.image ?? '',
                  width: 90.0, fit: BoxFit.contain),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.food.name ?? '',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    widget.food.description ?? '',
                    style: const TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      const Text('Piece: '),
                      Text(
                        (widget.food.price ?? 0.0).toStringAsFixed(2),
                        style: const TextStyle(color: Colors.blue),
                      ),
                      const Text(
                        '\$',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Total: '),
                      Text(
                        ((widget.food.price ?? 0.0) * widget.food.quantity!)
                            .toStringAsFixed(2),
                        style: const TextStyle(color: Colors.blue),
                      ),
                      const Text(
                        '\$',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 50.0),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (widget.food.quantity! > 0) {
                            widget.food.quantity = widget.food.quantity! - 1;
                          }
                        });
                      },
                      child: const Icon(Icons.remove),
                    ),
                    Text(
                      '${widget.food.quantity ?? 0}',
                      style: const TextStyle(color: Colors.red),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.food.quantity = widget.food.quantity! + 1;
                        });
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
