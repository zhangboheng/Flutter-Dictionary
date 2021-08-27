// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: CustomRadioExample(),
    );
  }
}

class MyRadioOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;

  const MyRadioOption({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
        ),
        color: isSelected ? Colors.teal : Colors.white,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.teal,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.teal.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              const SizedBox(width: 10),
              _buildText(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRadioExample extends StatefulWidget {
  const CustomRadioExample({Key? key}) : super(key: key);

  @override
  State createState() => _CustomRadioExampleState();
}

class _CustomRadioExampleState extends State<CustomRadioExample> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          MyRadioOption<String>(
            value: 'A',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: 'A',
            text: 'One',
          ),
          MyRadioOption<String>(
            value: 'B',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: 'B',
            text: 'Two',
          ),
          MyRadioOption<String>(
            value: 'C',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: 'C',
            text: 'Three',
          ),
          MyRadioOption<String>(
            value: 'D',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: 'D',
            text: 'Four',
          ),
          MyRadioOption<String>(
            value: 'E',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: 'E',
            text: 'Five',
          ),
        ],
      ),
    );
  }
}
