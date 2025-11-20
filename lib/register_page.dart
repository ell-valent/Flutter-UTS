import 'package:flutter/material.dart';
import 'widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();
    final email = TextEditingController();
    final pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(title: "Nama", controller: name),
            CustomTextField(title: "Email", controller: email),
            CustomTextField(title: "Password", controller: pass, obscure: true),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
