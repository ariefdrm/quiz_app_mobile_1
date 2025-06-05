import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz app mobile 1'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'arief darmawan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text('8020230033'),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: Size(160, 100),
                shape: LinearBorder(),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/posts');
              },
              child: Column(
                children: [
                  Icon(Icons.switch_account_rounded, size: 40),
                  Text('Lihat Post'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
