import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// 상태가 없어서 ViewModel도 없음

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome!!',
              ),
              ElevatedButton(
                onPressed: () {
                  print('a');
                  context.go('/story');
                },
                child: const Text("Let's go!"),
              ),
            ],
          ),
        ),
      );
}
