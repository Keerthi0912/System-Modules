import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  static const routeName = '/businessCardScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Business Card'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(25.0, 35.0, 20.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        'images/keerthi.jpg',
                        height: 250.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5.0,
                    bottom: 5.0,
                    child: Image.asset(
                      'images/qr-code.png',
                      height: 100.0,
                    ),
                  ),
                ],
              ),
              Divider(height: 40.0, color: Colors.blue[200],),
              Text(
                'Name',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'keerthi Vanaparthi',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 20.0,),
               Text(
                'Title',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Student',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 20.0,),
              Text(
                'Department',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Computer Science',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 20.0,),
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(width: 30.0),
                  Text('kvanaparthi@uco.edu', style: Theme.of(context).textTheme.titleLarge,),
                ],
              ),
              const SizedBox(height: 8.0,),
              Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(width: 30.0),
                  Text('+1 (405) 371 5302', style: Theme.of(context).textTheme.titleLarge,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
