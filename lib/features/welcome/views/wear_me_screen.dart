import 'package:flutter/material.dart';
import 'package:matule_app/features/welcome/views/onboards_root_screen.dart';

class WearMeScreen extends StatefulWidget {
  const WearMeScreen({super.key});

  @override
  State<WearMeScreen> createState() => _WearMeScreenState();
}

class _WearMeScreenState extends State<WearMeScreen> {

  Future<void> toNextPage() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => OnboardsRootScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: toNextPage(),
      builder: (context, snapshot) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MATULE',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    fontSize: 65,
                    color: Theme
                        .of(context)
                        .colorScheme
                        .surface,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'ME',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontSize: 35,
                      color: Theme
                          .of(context)
                          .colorScheme
                          .surface,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
