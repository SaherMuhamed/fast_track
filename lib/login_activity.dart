import 'dio_helper.dart';
import 'signup_activity.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginActivity(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      title: 'Login Test',
    ),
  );
}

DioHelper dioHelper = DioHelper();

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  // These are the variable ID for login form to use.
  final TextEditingController _emailAddressFieldController =
      TextEditingController();
  final TextEditingController _passwordFieldController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final bool _isChecked = false;
  bool _isPasswordHidden = true;
  bool eyePasswordPressed = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.fill),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 140.0,
                      ),
                      const Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          fontSize: 35.0,
                          color: Color(0xff3E6D9C),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'Sign to continue',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.7,
                          fontSize: 15.0,
                          color: Color(0xFF434242),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        controller: _emailAddressFieldController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'eg: user@domain.com',
                          labelText: "Email Address",
                          prefixIcon: const Icon(
                            Icons.email_rounded,
                            color: Color(0xff3E6D9C),
                          ),
                          floatingLabelStyle: const TextStyle(
                              color: Color(0xff3E6D9C),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.red, width: 1.3),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff3E6D9C), width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email Required';
                          } else if (value.length < 7) {
                            return 'Enter a valid email address';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        controller: _passwordFieldController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock_rounded,
                            color: Color(0xff3E6D9C),
                          ),
                          suffixIcon: eyePasswordPressed
                              ? IconButton(
                                  icon: const Icon(
                                    Icons.visibility_off_rounded,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordHidden = !_isPasswordHidden;
                                      eyePasswordPressed = !eyePasswordPressed;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: const Icon(
                                    Icons.visibility_rounded,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordHidden = !_isPasswordHidden;
                                      eyePasswordPressed = !eyePasswordPressed;
                                    });
                                  },
                                ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.red, width: 1.3),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          floatingLabelStyle: const TextStyle(
                              color: Color(0xff3E6D9C),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff3E6D9C), width: 2.0),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        obscureText: _isPasswordHidden,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password Required';
                          } else if (value.length < 6) {
                            return 'Password too short';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: null,
                          ),
                          const Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        height: 50.0,
                        width: 170.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff3E6D9C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              shadowColor: Colors.black87),
                          onPressed: () {
                            // Validate returns true if the form is valid, or false otherwise.
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, send POST request to the database.
                              dioHelper
                                  .loginPostData(
                                      emailAddress:
                                          _emailAddressFieldController.text,
                                      password: _passwordFieldController.text)
                                  .then((value) {
                                if (value.data['status'] == true) {
                                  // print(value.data.toString());
                                  Alert(
                                    // style: alertStyle,
                                    style: AlertStyle(
                                      alertBorder: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                      backgroundColor: const Color(0xFFF5F5F5),
                                      isOverlayTapDismiss: false,
                                      isCloseButton: false,
                                      animationDuration:
                                          const Duration(milliseconds: 500),
                                      animationType: AnimationType.grow,
                                      titleStyle: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.green,
                                        // color: Color(0xFF434242),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    context: context,
                                    type: AlertType.success,
                                    title: "Login success",
                                    desc: "You've successfully logged in.",
                                    buttons: [
                                      DialogButton(
                                        onPressed: () => Navigator.pop(context),
                                        color: Colors.green,
                                        width: 170,
                                        child: const Text(
                                          "Back",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ).show();
                                } else {
                                  Alert(
                                    // style: alertStyle,
                                    style: AlertStyle(
                                      alertBorder: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                      backgroundColor: const Color(0xFFF5F5F5),
                                      isOverlayTapDismiss: false,
                                      animationDuration:
                                          const Duration(milliseconds: 500),
                                      animationType: AnimationType.grow,
                                      isCloseButton: false,
                                      titleStyle: const TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.red,
                                        // color: Color(0xFF434242),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    context: context,
                                    type: AlertType.error,
                                    title: "Login failed",
                                    desc:
                                        "Invalid email or password, please try again.",
                                    buttons: [
                                      DialogButton(
                                        onPressed: () => Navigator.pop(context),
                                        color: Colors.red,
                                        width: 170,
                                        child: const Text(
                                          "Try again",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ).show();
                                }
                              });
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Color(0xFF646464),
                              fontSize: 15.0,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ParentSignUpActivity()),);
                            },
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xff3E6D9C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
