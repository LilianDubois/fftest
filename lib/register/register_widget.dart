import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../singin/singin_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatefulWidget {
  RegisterWidget({Key key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController emailTextController;
  TextEditingController textController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    textController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF110631),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0.06, -0.63),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/flutterflow_assets/ff_full_logo_light.png',
                  width: 280,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: Container(
                          width: 285,
                          height: 40,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: TextFormField(
                                  controller: emailTextController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'email',
                                    hintStyle: GoogleFonts.getFont(
                                      'Lato',
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF3C2452),
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF3C2452),
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Lato',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0.95, 0.5),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: Container(
                          width: 285,
                          height: 40,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Name',
                                    hintStyle: GoogleFonts.getFont(
                                      'Lato',
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF3C2452),
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF3C2452),
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Lato',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0.95, 0.5),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: Container(
                          width: 285,
                          height: 40,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: TextFormField(
                                  controller: passwordTextController,
                                  obscureText: !passwordVisibility,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.getFont(
                                      'Lato',
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF3C2452),
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF3C2452),
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordVisibility =
                                            !passwordVisibility,
                                      ),
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Lato',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment(0.95, 0.5),
                                child: Icon(
                                  Icons.lock_open,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                final user = await createAccountWithEmail(
                                  context,
                                  emailTextController.text,
                                  passwordTextController.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                final email = emailTextController.text;
                                final displayName = textController.text;

                                final usersRecordData = createUsersRecordData(
                                  email: email,
                                  displayName: displayName,
                                );

                                await UsersRecord.collection
                                    .doc(user.uid)
                                    .update(usersRecordData);

                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePageWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              text: 'Sign up',
                              options: FFButtonOptions(
                                width: 125,
                                height: 40,
                                color: Color(0x00FFFFFF),
                                textStyle: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFF553BBA),
                                  width: 2,
                                ),
                                borderRadius: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SinginWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'Sign in',
                          options: FFButtonOptions(
                            width: 125,
                            height: 40,
                            color: Color(0x00FFFFFF),
                            textStyle: GoogleFonts.getFont(
                              'Lato',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFF553BBA),
                              width: 2,
                            ),
                            borderRadius: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
