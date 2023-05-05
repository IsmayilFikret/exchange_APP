import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('EXCHANGE'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'exchange : ${number != null ? '$number $valyuta' : ''}',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 200,
            ),
            TextField(
              controller: controller,
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      dollarChange();
                    },
                    icon: const Icon(Icons.attach_money),
                    label: const Text(
                      'dollar',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      rublChange();
                    },
                    icon: const Icon(Icons.attach_money),
                    label: const Text(
                      'rubl',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      tlChange();
                    },
                    icon: const Icon(Icons.attach_money),
                    label: const Text(
                      'tl',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      euroChange();
                    },
                    icon: const Icon(Icons.attach_money),
                    label: const Text(
                      'euro',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
