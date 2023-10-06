import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          const DisplayOne(hint: "Enter First Number"),
          const SizedBox(
            height: 30,
          ),
          const DisplayOne(hint: "Enter  Second Number"),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                  onPressed: () {}, child: const Icon(Icons.add)),
              FloatingActionButton(
                  onPressed: () {}, child: const Icon(CupertinoIcons.minus)),
              FloatingActionButton(
                  onPressed: () {}, child: const Icon(CupertinoIcons.multiply)),
              FloatingActionButton(
                  onPressed: () {}, child: const Icon(CupertinoIcons.divide)),
            ],
          )
        ],
      ),
    );
  }
}

class DisplayOne extends StatelessWidget {
  const DisplayOne({super.key, this.hint = "Enter a number"});
  final String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      autofocus: true,
      keyboardAppearance: Brightness.light,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(10)),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
          )),
    );
  }
}
