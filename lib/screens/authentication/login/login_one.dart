import 'dart:ui';

import 'package:erp_app_boe_industry/models/auth_provider.dart';
import 'package:erp_app_boe_industry/models/login_form_provider.dart';
import 'package:erp_app_boe_industry/screens/authentication/constant_auth.dart';
import 'package:erp_app_boe_industry/utils/constants/color.dart';
import 'package:erp_app_boe_industry/utils/constants/image.dart';
import 'package:erp_app_boe_industry/utils/constants/theme.dart';
import 'package:erp_app_boe_industry/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(builder: (context) {
        final loginFormProvider =
            Provider.of<LoginFormProvider>(context, listen: false);

        return Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                SelectionArea(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        Images.c1,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: ClipRRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 10.0, sigmaY: 10.0),
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 460,
                                    ),
                                    padding: Responsive.isMobile(context)
                                        ? const EdgeInsets.all(32)
                                        : const EdgeInsets.all(40),
                                    decoration: BoxDecoration(
                                      color: isDark
                                          ? ColorConst.cardDark
                                          : Colors.grey.shade200
                                              .withOpacity(0.5),
                                      border: Border.all(
                                        color: isDark
                                            ? ColorConst.cardDark
                                            : ColorConst.white,
                                      ),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        ConstantAuth.headerView(
                                            "Bienvenido de nuevo!",
                                            'Inicie sesión en su cuenta para continuar',
                                            context),
                                        _bottomView(
                                            authProvider, loginFormProvider),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _bottomView(
      AuthProvider authProvider, LoginFormProvider loginFormProvider) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: loginFormProvider.formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 28,
          ),
          ConstantAuth.labelView("Correo electrónico"),
          const SizedBox(
            height: 8,
          ),
          _usernameTextBoxWidget(loginFormProvider),
          const SizedBox(
            height: 16,
          ),
          ConstantAuth.labelView("Contraseña"),
          const SizedBox(
            height: 8,
          ),
          _passwordTextBoxWidget(loginFormProvider),
          const SizedBox(
            height: 16,
          ),
          _loginButton(authProvider, loginFormProvider),
        ],
      ),
    );
  }

  Widget _usernameTextBoxWidget(LoginFormProvider loginFormProvider) {
    return CustomTextField(
      inputDecoration:
          const InputDecoration(enabledBorder: UnderlineInputBorder()),
      hintText: 'Introduce el nombre de usuario',
      validator: (value) {
        value = value!.trim();
        if (value.isEmpty) {
          return 'Ingrese su contraseña';
        }
        return null;
      },
      onChanged: (value) => loginFormProvider.usrUsuario = value.trim(),
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _usernameController,
    );
  }

  Widget _passwordTextBoxWidget(LoginFormProvider loginFormProvider) {
    return CustomTextField(
      inputDecoration:
          const InputDecoration(enabledBorder: UnderlineInputBorder()),
      obsecureText: _obscureText,
      hintText: 'Introduce la contraseña',
      onChanged: (value) => loginFormProvider.password = value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Ingrese su contraseña';
        }
        return null;
      },
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.done,
      controller: _passwordController,
      suffixIcon: IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: _togglePasswordVisibility,
      ),
    );
  }

  Widget _loginButton(
      AuthProvider authProvider, LoginFormProvider loginFormProvider) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0, top: 4.0),
      child: ElevatedButton(
        onPressed: () {
          final isValid = loginFormProvider.validateForm();
          if (isValid) {
            authProvider.login(loginFormProvider.usrUsuario.trim(),
                loginFormProvider.password);
          }
        },
        child: Text('Iniciar Sesión'),
      ),
    );
  }
}
