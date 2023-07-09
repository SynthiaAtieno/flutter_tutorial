import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int result = 0;
    final TextEditingController currency = TextEditingController();

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  print(currency.text);
                },
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
            ),
          ],
        ),
      ),
    );
  }
}
