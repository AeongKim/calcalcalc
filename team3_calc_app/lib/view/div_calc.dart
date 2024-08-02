import 'package:flutter/material.dart';
import 'package:flutter_cal_app/vm/calc.dart';

class divCalc extends StatefulWidget {
  const divCalc({super.key});

  @override
  State<divCalc> createState() => _divCalcState();
}

class _divCalcState extends State<divCalc> {
  late TextEditingController num1controller;
  late double num1;
  late double num2;
  late String resultStr1;
  late String resultStr2;
  late double addResult;
  late String calcList;

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
        title: const Text('계산기'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: num1controller,
              readOnly: true,
              decoration: InputDecoration(labelText: '결과값'),
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus1());
                      setState(() {});
                    },
                    child: const Text('1')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus2());
                      setState(() {});
                    },
                    child: const Text('2')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus3());
                      setState(() {});
                    },
                    child: const Text('3')),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus4());
                      setState(() {});
                    },
                    child: const Text('4')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus5());
                      setState(() {});
                    },
                    child: const Text('5')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus6());
                      setState(() {});
                    },
                    child: const Text('6')),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus7());
                      setState(() {});
                    },
                    child: const Text('7')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus8());
                      setState(() {});
                    },
                    child: const Text('8')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus9());
                      setState(() {});
                    },
                    child: const Text('9')),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      calcList = '/';
                      calcList1();
                      resultStr1 = '';
                      num1controller = TextEditingController(text: '');
                    },
                    child: const Text('/')),
                ElevatedButton(
                    onPressed: () {
                      num1controller = TextEditingController(text: strPlus0());
                      setState(() {});
                    },
                    child: const Text('0')),
                ElevatedButton(
                    onPressed: () {
                      calcList2();
                      calcAc();
                      num1controller = TextEditingController(text: resultStr2);
                      setState(() {});
                    },
                    child: const Text('=')),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    calcList = '';
                    resultStr1 = '';
                    resultStr2 = '';
                    num1controller = TextEditingController(text: '0');
                    setState(() {
                      
                    });
                  },
                  child: const Text('C')
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  strPlus1() {
    resultStr1 = resultStr1 + '1';
    setState(() {});
    return resultStr1;
  }

  strPlus2() {
    resultStr1 = resultStr1 + '2';
    setState(() {});
    return resultStr1;
  }

  strPlus3() {
    resultStr1 = resultStr1 + '3';
    setState(() {});
    return resultStr1;
  }

  strPlus4() {
    resultStr1 = resultStr1 + '4';
    setState(() {});
    return resultStr1;
  }

  strPlus5() {
    resultStr1 = resultStr1 + '5';
    setState(() {});
    return resultStr1;
  }

  strPlus6() {
    resultStr1 = resultStr1 + '6';
    setState(() {});
    return resultStr1;
  }

  strPlus7() {
    resultStr1 = resultStr1 + '7';
    setState(() {});
    return resultStr1;
  }

  strPlus8() {
    resultStr1 = resultStr1 + '8';
    setState(() {});
    return resultStr1;
  }

  strPlus9() {
    resultStr1 = resultStr1 + '9';
    setState(() {});
    return resultStr1;
  }

  strPlus0() {
    resultStr1 = resultStr1 + '0';
    setState(() {});
    return resultStr1;
  }

  calcList1() {
    num1 = double.parse(num1controller.text.trim());
    setState(() {});
  }

  calcList2() {
    num2 = double.parse(num1controller.text.trim());
    setState(() {});
  }

  calcAc() {
    Calc calc1 = Calc(num1, num2);
    if (calcList == '/'){
      addResult = calc1.divCalc();
      resultStr2 = '$addResult';
    }

    setState(() {});
  }
}
