import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/rnwlogo_png.png', height: 200),
            SizedBox(height: 20),
            Text(
              "LOGIN",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffE41F28))),
            ),
            SizedBox(height: 10),
            Text('Please login to continue using our app'),
            SizedBox(height: 30),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Name/Grid",
                labelStyle: const TextStyle(color: Color(0xffE41F28)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color:Color(0xffE41F28)),
                ),
                hintText: 'Enter your Name or Grid',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color:Color(0xffE41F28)),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 20),
          TextField(
            onTap: () {},
            obscureText: _obscureText,
            cursorColor: Colors.black54,
            style: const TextStyle(fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              alignLabelWithHint: true,
              border: InputBorder.none,
              labelText: "Password",
              labelStyle: const TextStyle(color: Color(0xffE41F28)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color(0xffE41F28)),
              ),
              hintText: 'Enter your password',
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color(0xffE41F28)),
              ),
              hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              suffixIcon: IconButton(
                icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Forgot Password?'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('Log In',style: TextStyle(fontSize: 18,color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffE41F28),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xffE41F28)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('----------   Or connect with   ----------'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffE41F28),
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.facebook, color: Colors.white,size: 32,),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffE41F28),
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.mail, color: Colors.white,size: 32),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(  backgroundColor:  Color(0xffE41F28),
                  radius: 25,
                  child: IconButton(
                    icon: Icon(Icons.g_translate, color: Colors.white,size: 32),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/rnwlogo_png.png', height: 200),
            Text(
              "SIGN UP",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffE41F28))),
            ),
            SizedBox(height: 10),
            Text('Please fill the details and create account'),
            SizedBox(height: 30),
            TextField(
              onTap: () {},
              cursorColor: Colors.black54,
              style: const TextStyle(fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                labelText: "Full Name",
                labelStyle: const TextStyle(color: Color(0xffE41F28)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color:Color(0xffE41F28)),
                ),
                hintText: 'Enter your full Name',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color:Color(0xffE41F28)),
                ),
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Password must be at least 6 characters'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? '),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Or connect with'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.mail, color: Colors.blueAccent),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.g_translate, color: Colors.red),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
