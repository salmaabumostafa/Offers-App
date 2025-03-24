import 'package:flutter/material.dart';

import 'home.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  var emailController = TextEditingController();
  var userController = TextEditingController();
  var passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        elevation: 0,
        title: Text('Sign up',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              // Text(
              //   "Login",
              //   style: TextStyle(
              //     fontSize: 40,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Image.asset("images/user.png"),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Center(
                    child: TextFormField(
                      controller: userController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person,color: Colors.black,)
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Center(
                  child: TextFormField(
                    // onFieldSubmitted: (String value){
                    //   print(value);
                    // },
                    // onChanged: (String value){
                    //   print(value);
                    // },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.black,)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _isObscure,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility, //
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure; //
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 40,),
              Center(
                    child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 55,
                    width: 155,
                    decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(50),

                    ),
                    child: Center(
                    child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordController.text);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                    },
                    child: Text("SIGN UP",
                      style: TextStyle(color: Colors.white),),)
                    ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
