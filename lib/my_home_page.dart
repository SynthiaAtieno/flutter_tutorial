import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double result = 0.0;
  final TextEditingController currency = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(currency.text) * 134;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        (16),
      ),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
        style: BorderStyle.solid,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 100, 129),
        elevation: 12,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'KES $result',
                style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: currency,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(color: Colors.black26),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black26,
                    focusedBorder: border,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: border),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(double.infinity, 50)),
                // style: ButtonStyle(
                //   minimumSize: const MaterialStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                //   foregroundColor: const MaterialStatePropertyAll(Colors.black),
                //   backgroundColor: const MaterialStatePropertyAll(Colors.black),
                //   shape: MaterialStatePropertyAll(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // ),
                child: const Text(
                  "Convert",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
