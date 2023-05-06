import 'package:exchange/constans/exchange_data.dart';
import 'package:flutter/material.dart';

import '../global/custom_buttom.dart';
import '../global/custom_text_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();

  double? number;
  double dollar = 0.59;
  double euro = 0.51;
  double tl = 5.84;
  double rubl = 66.86;
  String valyuta = '';

  void dollarChange() {
    if (controller.text.isEmpty) {
      return;
    }

    double input = double.parse(controller.text);
    double result = input * dollar;
    setState(
      () {
        number = result;
        valyuta = 'dollar';
      },
    );
  }

  void euroChange() {
    if (controller.text.isEmpty) {
      return;
    }

    double input = double.parse(controller.text);
    double result = input * euro;
    setState(
      () {
        number = result;
        valyuta = 'euro';
      },
    );
  }

  void tlChange() {
    if (controller.text.isEmpty) {
      return;
    }

    double input = double.parse(controller.text);
    double result = input * tl;
    setState(
      () {
        number = result;
        valyuta = 'tl';
      },
    );
  }

  void rublChange() {
    if (controller.text.isEmpty) {
      return;
    }

    double input = double.parse(controller.text);
    double result = input * rubl;
    setState(
      () {
        number = result;
        valyuta = 'rubl';
      },
    );
  }

  void clearAllData() {
    setState(() {
      controller.clear();
      number = null;
      valyuta = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  Column _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ExchangeText(number: number, valyuta: valyuta),
        _customSizedBox(200),
        CustomTextField(
          hintText: 'manat',
          controller: controller,
          inputype: TextInputType.number,
        ),
        _customSizedBox(40),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtom(
                onPress: () {
                  dollarChange();
                },
                buttonTitle: 'dollar',
              ),
              CustomButtom(
                onPress: () {
                  euroChange();
                },
                buttonTitle: 'euro',
              ),
              CustomButtom(
                onPress: () {
                  rublChange();
                },
                buttonTitle: 'rubl',
              ),
              CustomButtom(
                onPress: () {
                  tlChange();
                },
                buttonTitle: 'tl',
              ),
              FloatingActionButton(
                child: const Icon(Icons.clear_all),
                onPressed: () {
                  clearAllData();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('EXCHANGE'),
    );
  }
}

SizedBox _customSizedBox(double value) {
  return SizedBox(
    height: value,
  );
}
