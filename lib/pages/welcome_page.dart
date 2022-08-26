import 'package:flutter/material.dart';
import 'package:todo_app/pages/home_page.dart';

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
          const Padding(
            padding: EdgeInsets.only(right: 47, left: 47, top: 13),
            child: Text(
              "Este aplicativo tem o propósito de ajudar com suas tarefas diárias através de lembretes simples.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          ),
          Expanded(
            flex: 15,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Button(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Iniciar",
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
          ),
          const Expanded(flex: 7, child: SizedBox())
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      this.height = 56,
      this.width = double.infinity,
      this.gradient = const LinearGradient(
        colors: [
          Color(0xFFF4C27F),
          Color(0xFFD8605B),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      this.boxShadow = const [
        BoxShadow(
          color: Color(0x50000000),
          blurRadius: 10,
          offset: Offset(0, 6),
        ),
      ],
      this.color,
      required this.child})
      : super(key: key);

  final double height;
  final double width;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: child,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
        },
      ),
    );
  }
}
