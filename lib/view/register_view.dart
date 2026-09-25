import 'package:fecommerce/contoller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';

class RegisterView extends GetView<AuthController> {
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
                //w1
                TextFormField(
                  controller: controller.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Name",
                    label: Text("Name"),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) => value!.isEmpty ? 'Name required' : null,
                ),

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
                //w4 whatsapp
                TextFormField(
                  controller: controller.whatsapp,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Number",
                    label: Text("Number"),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Whatsapp required' : null,
                ),
                Gap(10),
                //w5
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: FilledButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        print("success");
                        controller.register();
                      }
                    },
                    child: Text("Register"),
                  ),
                ),
                //w6
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account ?"),
                    //Routes to login page
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: Text("Login"),
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
