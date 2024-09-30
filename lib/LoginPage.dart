import 'package:flutter/material.dart';
import './HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://raw.githubusercontent.com/YudaSaputraa/FoodApp-assets/refs/heads/main/img_authentication.webp',
            width: 300,
          ),
          Text(
            "Login",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text("Login Untuk mengakses Lebih Banyak fitur"),
          Form(
              key: formkey,
              child: Center(
                child: Center(
                  child: Container(
                    width: 350,
                    height: 350,
                    child: Card(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      elevation: 15,
                      shadowColor: Colors.black,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Column(
                            children: [
                              TextFormField(
                                controller: cUser,
                                decoration: InputDecoration(
                                    labelText: 'username',
                                    hintText: ' input username',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'username masih kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                obscureText: true,
                                controller: cPass,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: ' input Password',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Password masih kosong';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  String tUser = 'theo';
                                  String tPass = '135';

                                  if (formkey.currentState!.validate()) {
                                    if (cUser.text == tUser &&
                                        cPass.text == tPass) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => homepage(),
                                          ));
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Konrimasi Login'),
                                              content: Text('Masih salah'),
                                              actions: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      cUser.text = '';
                                                      cPass.text = '';
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text('OK'))
                                              ],
                                            );
                                          });
                                    }
                                    ;
                                  }
                                },
                                child: Text('Login'),
                                style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                        const Color.fromARGB(
                                            255, 200, 54, 244))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
