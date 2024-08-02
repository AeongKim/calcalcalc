
import 'package:flutter/material.dart';
import 'package:team3_calc_app/vm/calc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties
  late TextEditingController resultController; // 결과를 표시할 TextEditingController
  String num1 = ''; // 첫 번째 숫자
  String num2 = ''; // 두 번째 숫자
  String operator = ''; // 연산자

  @override
  void initState() {
    super.initState();
    resultController = TextEditingController(); // TextEditingController 초기화
  }

    _buttonPressed(String value) {
      if (value == 'C') {
        _clear(); // 초기화 버튼
      } else if (value == '=') {
        _calculate(); // 계산 버튼
      } else if (value == 'X') {
        _setOperator(value); // 곱셈 버튼
      } else {
        _addNumber(value); // 숫자 버튼
      }
      setState(() {});
  }

  _clear() {
    num1 = ''; // 첫 번째 숫자 초기화
    num2 = ''; // 두 번째 숫자 초기화
    operator = ''; // 연산자 초기화
    resultController.text = '0'; // 결과 초기화
  }

  _setOperator(String op) {
    if (num1.isNotEmpty && operator.isEmpty) {
      operator = op; // 연산자 설정
      resultController.text += ' $operator '; // 결과 필드에 연산자 추가
    }
  }

  _addNumber(String number) {
    if (operator.isEmpty) {
      num1 += number; // 첫 번째 숫자에 숫자 추가
      resultController.text = num1; // 결과 필드에 첫 번째 숫자 표시
    } else {
      num2 += number; // 두 번째 숫자에 숫자 추가
      resultController.text = '$num1 $operator $num2'; // 결과 필드에 전체 수식 표시
    }
  }

   _calculate() {
    if (num1.isNotEmpty && num2.isNotEmpty && operator.isNotEmpty) {
      Calc calc = Calc(num1 as double, num2 as double); 
      double result = calc.mulCalc(); // 곱셈 결과 계산
      resultController.text = result as String; // 결과 필드에 결과 표시
      num1 = result as String; // 결과를 첫 번째 숫자로 설정
      num2 = ''; // 두 번째 숫자 초기화
      operator = ''; // 연산자 초기화
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Center(
          child: Text('Multiplication Calculator'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            // 결과를 표시하는 TextField
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 380,
                child: TextField(
                  controller: resultController,
                  readOnly: true, // 읽기 전용
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 48),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '0',
                  ),
                ),
              ),
            ),
            // 버튼들을 행 단위로 배치
            _buildButtonRow(['7', '8', '9', 'X']),
            _buildButtonRow(['4', '5', '6', 'C']),
            _buildButtonRow(['1', '2', '3', '']),
            _buildButtonRow(['', '0', '', '=']),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildButtonRow(List<String> buttonTexts) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttonTexts.map((text) => _buildButton(text)).toList(),
    );
  }

  Widget _buildButton(String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => _buttonPressed(value), // 버튼 클릭 시 호출되는 함수
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[600],
          foregroundColor: Colors.white,
          
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        child: Text(
          value,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
} // END
