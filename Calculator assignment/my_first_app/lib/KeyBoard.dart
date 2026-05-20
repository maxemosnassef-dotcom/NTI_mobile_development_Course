import 'package:flutter/material.dart';
import 'button.dart';
import 'display1.dart';

class KeyBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KeyBoardState();
}

class KeyBoardState extends State<KeyBoard> {
  String resText = "";

  // Handles standard numeric inputs and decimals
  void onDigitPressed(String text) {
    setState(() {
      if (resText.startsWith("Error")) {
        resText = "";
      }
      resText += text;
    });
  }

  // Handles control functions, operators, and percentages
  void onOpPressed(String text) {
    setState(() {
      if (resText.startsWith("Error") && text != 'C') return;

      if (text == 'C') {
        resText = "";
      } else if (text == "=") {
        evaluateExpression();
      } else if (text == "⌫") {
        if (resText.isNotEmpty) {
          if (resText.endsWith(" ")) {
            // Strip the trailing space, the operator, and the leading space (3 chars total)
            resText = resText.substring(0, resText.length - 3);
          } else {
            // Strip a single digit
            resText = resText.substring(0, resText.length - 1);
          }
        }
      } else if (text == '%') {
        _handlePercent();
      } else if (text == "/" ||
          text == "÷" ||
          text == "×" ||
          text == "-" ||
          text == "+") {
        // Prevent adding consecutive operators
        if (resText.isNotEmpty && !resText.endsWith(" ")) {
          resText += " $text ";
        }
      }
    });
  }

  // Evaluates percentage instantly on the last input token block
  void _handlePercent() {
    if (resText.isEmpty || resText.endsWith(" ")) return;

    List<String> tokens = resText.trim().split(RegExp(r'\s+'));
    String lastToken = tokens.last;

    double? number = double.tryParse(lastToken);
    if (number != null) {
      double percentValue = number / 100.0;

      String formattedPercent = (percentValue % 1 == 0)
          ? percentValue.toInt().toString()
          : percentValue.toString();

      tokens[tokens.length - 1] = formattedPercent;
      resText = tokens.join(" ");
    }
  }

  void evaluateExpression() {
    if (resText.isEmpty) return;

    List<String> tokens = resText.trim().split(RegExp(r'\s+'));

    // Safety check for incomplete expressions
    if (tokens.isEmpty || ['+', '-', '×', '÷', '/'].contains(tokens.last))
      return;

    // Step 1: Process Multiplication and Division
    for (int i = 0; i < tokens.length; i++) {
      if (tokens[i] == '×' || tokens[i] == '÷' || tokens[i] == '/') {
        double num1 = double.parse(tokens[i - 1]);
        double num2 = double.parse(tokens[i + 1]);
        double result = 0;

        if (tokens[i] == '×') {
          result = num1 * num2;
        } else {
          if (num2 == 0) {
            setState(() => resText = "Error (Div by 0)");
            return;
          }
          result = num1 / num2;
        }

        tokens.replaceRange(i - 1, i + 2, [result.toString()]);
        i--;
      }
    }

    // Step 2: Process Addition and Subtraction
    double finalResult = double.parse(tokens[0]);
    for (int i = 1; i < tokens.length; i += 2) {
      String op = tokens[i];
      double nextNum = double.parse(tokens[i + 1]);

      if (op == '+') {
        finalResult += nextNum;
      } else if (op == '-') {
        finalResult -= nextNum;
      }
    }

    // Step 3: Update display layout string
    setState(() {
      if (finalResult % 1 == 0) {
        resText = finalResult.toInt().toString();
      } else {
        resText = finalResult.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Display(resText: resText),
          SizedBox(height: 20),

          // Row 1
          Row(
            children: [
              Button(
                color: const Color.fromARGB(255, 198, 4, 4),
                text: 'C',
                extended: false,
                onButtonPressed: onOpPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: "⌫",
                extended: false,
                onButtonPressed: onOpPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 99, 100, 100),
                text: '%',
                extended: false,
                onButtonPressed: onOpPressed, // Changed to onOpPressed
              ),
              Button(
                color: const Color.fromARGB(255, 99, 100, 100),
                text: '÷',
                extended: false,
                onButtonPressed: onOpPressed,
              ),
            ],
          ),

          // Row 2
          Row(
            children: [
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '7',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '8',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '9',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 99, 100, 100),
                text: '×',
                extended: false,
                onButtonPressed: onOpPressed,
              ),
            ],
          ),

          // Row 3
          Row(
            children: [
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '4',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '5',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '6',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 99, 100, 100),
                text: '-',
                extended: false,
                onButtonPressed: onOpPressed,
              ),
            ],
          ),

          // Row 4
          Row(
            children: [
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '1',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '2',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '3',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 99, 100, 100),
                text: '+',
                extended: false,
                onButtonPressed: onOpPressed,
              ),
            ],
          ),

          // Row 5
          Row(
            children: [
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '0',
                extended: true,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 34, 36, 37),
                text: '.',
                extended: false,
                onButtonPressed: onDigitPressed,
              ),
              Button(
                color: const Color.fromARGB(255, 99, 100, 100),
                text: '=',
                extended: false,
                onButtonPressed: onOpPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
