import 'package:fecommerce/contoller/auth_controller.dart';
import 'package:fecommerce/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginView extends GetView<AuthController> {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var key = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
              children: [
                //w1 Logo
                FlutterLogo(size: 50),

                Gap(10),
                //w2 Email
                TextFormField(
                  controller: controller.email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Email",
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Email required' : null,
                ),
                Gap(10),
                //w3 Password
                Obx(() {
                  return TextFormField(
                    controller: controller.password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your Password",
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.togglePassword();
                        },
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Password required' : null,
                    obscureText: controller.hidePassword.value,
                  );
                }),
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
                  child: FilledButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        controller.login();
                      }
                    },
                    child: Text("Login"),
                  ),
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
      ),
    );
  }
}
