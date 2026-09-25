import 'package:fecommerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //w1 Logo
              FlutterLogo(size: 50),

              Gap(10),
              //w2 Email
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Email",
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              Gap(10),
              //w3 Password
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Password",
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                ),
              ),
              Gap(10),
              //w4
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Forget Password")],
              ),
              Gap(10),
              //w5 button
              SizedBox(
                width: double.infinity,
                height: 40,
                child: FilledButton(onPressed: () {}, child: Text("Login")),
              ),
              Gap(10),
              //w6
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account ?"),
                  //Routes to register page
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.register);
                    },
                    child: Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
