import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4C27F),
      body: Column(
        children: [
          Expanded(
            flex: 28,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 34,
            child: Image.asset("assets/Done.png"),
          ),
          const Text(
            "Bem-vindo ao\nNOSSO LEMBRETE",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 24),
          ),
          const Text(
            "Este aplicativo tem o propósito de ajudar com suas tarefas diárias através de lembretes simples.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
          Expanded(
            flex: 15,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Container(
            height: 56,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFF4C27F),
                  Color(0xFFD8605B),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x50000000),
                  blurRadius: 10,
                  offset: Offset(0, 6),
                )
              ],
              borderRadius: BorderRadius.circular(100),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Get Start",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.forward,
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
          const Expanded(flex: 7, child: SizedBox())
        ],
      ),
    );
  }
}
