import 'package:flutter/material.dart';
import '../vm/calc.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  late TextEditingController num1controller;
  late double num1;
  late double num2;
  late String resultStr1;
  late String resultStr2;
  late double addResult;
  late String calcList;
  bool isSecondNumber = false;

  @override
  void initState() {
    super.initState();
    num1controller = TextEditingController(text: '0');
    resultStr1 = '';
    resultStr2 = '';
    num1 = 0;
    num2 = 0;
    addResult = 0;
    calcList = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('덧셈 계산기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1controller,
              readOnly: true,
              decoration: const InputDecoration(labelText: '덧셈 계산기'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus1();
                    setState(() {});
                  },
                  child: const Text('1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus2();
                    setState(() {});
                  },
                  child: const Text('2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus3();
                    setState(() {});
                  },
                  child: const Text('3'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus4();
                    setState(() {});
                  },
                  child: const Text('4'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus5();
                    setState(() {});
                  },
                  child: const Text('5'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus6();
                    setState(() {});
                  },
                  child: const Text('6'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus7();
                    setState(() {});
                  },
                  child: const Text('7'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus8();
                    setState(() {});
                  },
                  child: const Text('8'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus9();
                    setState(() {});
                  },
                  child: const Text('9'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calcList = '+';
                    calcList1();
                    isSecondNumber = true;
                    num1controller.text = resultStr1;
                    setState(() {});
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = strPlus0();
                    setState(() {});
                  },
                  child: const Text('0'),
                ),
                ElevatedButton(
                  onPressed: () {
                    calcList2();
                    calcAc();
                    num1controller.text = resultStr2;
                    isSecondNumber = false;
                    setState(() {});
                  },
                  child: const Text('='),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calcList = '';
                    resultStr1 = '';
                    resultStr2 = '';
                    num1controller.text = '0';
                    isSecondNumber = false;
                    setState(() {});
                  },
                  child: const Text('C'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String strPlus1() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}1';
    setState(() {});
    return resultStr1;
  }

  String strPlus2() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}2';
    setState(() {});
    return resultStr1;
  }

  String strPlus3() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}3';
    setState(() {});
    return resultStr1;
  }

  String strPlus4() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}4';
    setState(() {});
    return resultStr1;
  }

  String strPlus5() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}5';
    setState(() {});
    return resultStr1;
  }

  String strPlus6() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}6';
    setState(() {});
    return resultStr1;
  }

  String strPlus7() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}7';
    setState(() {});
    return resultStr1;
  }

  String strPlus8() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}8';
    setState(() {});
    return resultStr1;
  }

  String strPlus9() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}9';
    setState(() {});
    return resultStr1;
  }

  String strPlus0() {
    if (isSecondNumber) {
      resultStr1 = '';
      isSecondNumber = false;
    }
    resultStr1 = '${resultStr1}0';
    setState(() {});
    return resultStr1;
  }

  void calcList1() {
    num1 = double.parse(num1controller.text.trim());
    setState(() {});
  }

  void calcList2() {
    num2 = double.parse(num1controller.text.trim());
    setState(() {});
  }

  void calcAc() {
    Calc calc1 = Calc(num1, num2);
    if (calcList == '+') {
      addResult = calc1.addCalc();
      resultStr2 = addResult.toStringAsFixed(0); // 소숫점 이하를 제거
    }
    setState(() {});
  }
}//
