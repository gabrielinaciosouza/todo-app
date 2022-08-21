import 'package:flutter/material.dart';
import 'package:todo_app/pages/welcome_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4C27F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF4C27F),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 13,
            child: SizedBox(),
          ),
          Center(
            child: ClipOval(
              child: Image.network(
                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text("Monica"),
          const Text("@monica"),
          const Button(child: Text("sair")),
          const Expanded(
            flex: 62,
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
