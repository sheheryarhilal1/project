import 'package:flutter/material.dart';
import 'package:my_app/Signup_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Decorative CircleAvatars
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 85),
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Color.fromARGB(255, 164, 120, 236),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Welcome Text
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, bottom: 8),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 15),
              child: Row(
                children: [
                  Text(
                      "Please enter your email address\nand password for login"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 108, 32, 231),
                              width: 10)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),

                  // Password Field
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Forgot Password")],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor:
                          const Color.fromARGB(255, 108, 32, 231), // Text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        // Set your desired radius here
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/imagefifteen.png",
                        width: 100,
                        height: 100,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [Text("Not Register Yet?")],
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Color.fromARGB(255, 108, 32, 231),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Next Page
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page')),
      body: Center(child: Text('You have successfully signed in!')),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SigninPage(),
  ));
}
