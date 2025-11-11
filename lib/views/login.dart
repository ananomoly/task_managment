import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoginPageActive = true;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 68, 24, 152),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/AppIcon.svg",
                width: 27,
                height: 27,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 12),
                child: Text(
                  "Get Started now",
                  style: theme.textTheme.titleLarge!.copyWith(fontSize: 32),
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Create an account or log in to explore\n about our app",
                style: theme.textTheme.bodySmall?.copyWith(fontSize: 12),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(top: 24, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LoginStateButton(
                      theme: theme,
                      isLoginPageActive: isLoginPageActive,
                      onTap: () {
                        setState(() {
                          isLoginPageActive = true;
                        });
                      },
                      text: 'Login',
                    ),
                    LoginStateButton(
                      theme: theme,
                      isLoginPageActive: !isLoginPageActive,
                      onTap: () {
                        setState(() {
                          isLoginPageActive = false;
                        });
                      },
                      text: 'Sing in',
                    ),
                  ],
                ),
              ),
              TextField(decoration: InputDecoration(labelText: "Email"),),
              SizedBox(height: 16,),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}

class LoginStateButton extends StatelessWidget {
  const LoginStateButton({
    super.key,
    required this.theme,
    required this.isLoginPageActive,
    required this.text,
    required this.onTap,
  });

  final ThemeData theme;
  final bool isLoginPageActive;
  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 55,
        height: 55,
        child: Center(
          child: Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(
              fontSize: 15,
              color: isLoginPageActive ? Colors.black : null,
            ),
          ),
        ),
      ),
    );
  }
}
