import 'package:flutter/material.dart';
import 'package:login_page_revisi/menu_title.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4,
        leading: Padding(
          padding: EdgeInsets.all(12),
          child: Image.network(
              'https://d17ivq9b7rppb3.cloudfront.net/original/commons/new-ui-logo.png'),
        ),
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              MenuTitle(title: 'Academy'),
              MenuTitle(title: 'Challenge'),
              MenuTitle(title: 'Event'),
              MenuTitle(title: 'Job'),
              MenuTitle(title: 'Developer'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                  'https://d17ivq9b7rppb3.cloudfront.net/original/commons/certificate_logo.png'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Masuk',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Center(
                child: Image.asset('images/ic_about.png'),
              ),
              Text(
                'Email',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Alamat Email',
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Passsword',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Theme(
                  data: Theme.of(context).copyWith(primaryColor: Colors.grey),
                  child: TextField(
                    obscureText: obsureText,
                    decoration: InputDecoration(
                      hintText: 'Masukan Password',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                          icon: Icon(obsureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              obsureText = !obsureText;
                            });
                          }),
                      isDense: true,
                    ),
                  )),
              SizedBox(
                height: 8,
              ),
              Text(
                'Lupa Password?',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.pink,
                child: Text(
                  'Masuk',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Atau masuk dengan',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Image.network(
                      'https://pngimg.com/uploads/google/google_PNG19644.png',
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Image.network(
                      'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19749.png',
                      width: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Belum punya akun ? Ayo ',
                      style: Theme.of(context).textTheme.bodyText1,
                      children: [
                    TextSpan(
                        text: 'Daftar',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ))
                  ])),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: 'Dengan melakukan login, Anda setuju dengan ',
                      style: Theme.of(context).textTheme.bodyText1,
                      children: [
                    TextSpan(
                        text: 'syarat & ketentuan Dicoding',
                        style: TextStyle(decoration: TextDecoration.underline))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
