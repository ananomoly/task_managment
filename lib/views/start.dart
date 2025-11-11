import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managment/views/login.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/images/StartIcon.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 350,
            decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 64,
                    left: 64,
                    bottom: 20,
                  ),
                  child: Text(
                    "Task Management &  To-Do List",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 54,
                    right: 54,
                    bottom: 40,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "This productive tool is designed to helpyou better manage your taskproject-wise conveniently!",
                    style: theme.textTheme.bodySmall?.copyWith(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    bottom: 73,
                    right: 22,
                    left: 22,
                  ),
                  child: StartButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.right,
              "LET’S START",
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          const SizedBox(width: 65),
          SvgPicture.asset(
            "assets/images/Arrow.svg",
            width: 20,
            height: 20,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
