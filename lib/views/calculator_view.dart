import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int x = 0;
  int y = 0;
  num z = 0;

  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          CalculatorDisplay(
              hint: "Enter First Number", controller: displayOneController),
          const SizedBox(
            height: 30,
          ),
          CalculatorDisplay(
              hint: "Enter  Second Number", controller: displayTwoController),
          const SizedBox(
            height: 30,
          ),
          Text(
            z.toString(),
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(displayOneController.text)! +
                          num.tryParse(displayTwoController.text)!;
                    });
                  },
                  child: const Icon(Icons.add)),
              FloatingActionButton(
                  onPressed: () {
                    z = x - y;
                  },
                  child: const Icon(CupertinoIcons.minus)),
              FloatingActionButton(
                  onPressed: () {
                    z = x * y;
                  },
                  child: const Icon(CupertinoIcons.multiply)),
              FloatingActionButton(
                  onPressed: () {
                    z = x / y;
                  },
                  child: const Icon(CupertinoIcons.divide)),
              FloatingActionButton.extended(
                  onPressed: () {
                    z = x / y;
                  },
                  label: const Icon(CupertinoIcons.clear)),
            ],
          )
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay(
      {super.key, required this.controller, this.hint = "Enter a number"});

  final String? hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
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
