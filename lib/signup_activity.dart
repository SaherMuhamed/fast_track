import 'package:flutter/material.dart';

final List<String> spinnerGenders = [
  'Male',
  'Female',
];

class ParentSignUpActivity extends StatefulWidget {
  const ParentSignUpActivity({Key? key}) : super(key: key);

  @override
  State<ParentSignUpActivity> createState() => _ParentSignUpActivityState();
}

class _ParentSignUpActivityState extends State<ParentSignUpActivity> {
  // These are the variable ID for login form to use.
  final TextEditingController _fullNameFieldController =
      TextEditingController();
  final TextEditingController _emailAddressFieldController =
      TextEditingController();
  final TextEditingController _passwordFieldController =
      TextEditingController();
  final TextEditingController _confirmPasswordFieldController =
      TextEditingController();
  final TextEditingController _phoneNumberFieldController =
      TextEditingController();

  String dropdownValue = spinnerGenders.first;

  final _formKey = GlobalKey<FormState>();
  bool isLastPage = false;
  bool _isPasswordHidden = true;
  bool eyePasswordPressed = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.fill),
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
                          height: 200.0,
                        ),
                        const Text(
                          'Create Account',
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
                          'Create your new account',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.7,
                            fontSize: 15.0,
                            color: Color(0xFF434242),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          controller: _fullNameFieldController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'eg: Saher Muhamed Alaa',
                            labelText: "Full Name",
                            prefixIcon: const Icon(
                              Icons.badge,
                              color: Color(0xff3E6D9C),
                            ),
                            floatingLabelStyle: const TextStyle(
                                color: Color(0xff3E6D9C),
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.3),
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
                              return 'FullName Required';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 7.0,
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
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.3),
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
                          height: 7.0,
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
                                        _isPasswordHidden =
                                            !_isPasswordHidden;
                                        eyePasswordPressed =
                                            !eyePasswordPressed;
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
                                        _isPasswordHidden =
                                            !_isPasswordHidden;
                                        eyePasswordPressed =
                                            !eyePasswordPressed;
                                      });
                                    },
                                  ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.3),
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
                          height: 7.0,
                        ),
                        TextFormField(
                          controller: _confirmPasswordFieldController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            labelText: 'Confirm Password',
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
                                        _isPasswordHidden =
                                            !_isPasswordHidden;
                                        eyePasswordPressed =
                                            !eyePasswordPressed;
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
                                        _isPasswordHidden =
                                            !_isPasswordHidden;
                                        eyePasswordPressed =
                                            !eyePasswordPressed;
                                      });
                                    },
                                  ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 1.3),
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
                          height: 7.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: TextFormField(
                                controller: _phoneNumberFieldController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  hintText: 'eg: +20 xx xxxx xxx',
                                  labelText: "Phone Number",
                                  prefixIcon: const Icon(
                                    Icons.phone,
                                    color: Color(0xff3E6D9C),
                                  ),
                                  floatingLabelStyle: const TextStyle(
                                      color: Color(0xff3E6D9C),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.red, width: 1.3),
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
                                    return 'Phone Number Required';
                                  } else if (value.length < 11) {
                                    return 'Enter a valid phone number';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 7.0,
                            ),
                            Expanded(
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  labelText: 'Gender',
                                  floatingLabelStyle: const TextStyle(
                                      color: Color(0xff3E6D9C),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color(0xff3E6D9C), width: 2.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                // key: _genderFieldController,
                                items: spinnerGenders
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: 165.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff3E6D9C),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                shadowColor: Colors.black87),
                            onPressed: () {  },
                            child: const Text(
                              'Next step',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                          ),
                        ),
                        const SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Color(0xFF646464),
                                fontSize: 15.0,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Log In',
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
      ),
    );
  }
}
