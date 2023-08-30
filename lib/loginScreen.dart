import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    // Simulate authentication with hardcoded credentials
    if (username == 'user' && password == 'password') {
      // Navigate to the next screen after successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextScreen()), // Replace with your desired screen
      );
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Login Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
            width: .5,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _login, // Call the login function
              child: Text('Login'),
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text("Welcome to the next screen after login!"),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
