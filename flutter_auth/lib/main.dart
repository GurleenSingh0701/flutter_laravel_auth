// import 'package:flutter/material.dart';
// import 'package:flutter_auth/dashboard.dart';
// import 'package:flutter_auth/registration_form.dart';
// import 'login_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
//   ThemeMode _themeMode = ThemeMode.system;
//   bool _isSystemDark = false;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     _checkSystemTheme();
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   void didChangePlatformBrightness() {
//     _checkSystemTheme();
//   }

//   void _checkSystemTheme() {
//     final brightness =
//         WidgetsBinding.instance.platformDispatcher.platformBrightness;
//     setState(() {
//       _isSystemDark = brightness == Brightness.dark;
//       if (_themeMode == ThemeMode.system) {
//         _themeMode = _isSystemDark ? ThemeMode.dark : ThemeMode.light;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Auth App',
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       themeMode: _themeMode,
//       home: MyHomePage(
//         onThemeChanged: (isDark) {
//           setState(() {
//             _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
//           });
//         },
//       ),
//     );
//   }
// }

// final ThemeData lightTheme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ColorScheme.light(
//     primary: Colors.blue.shade800,
//     secondary: Colors.blue.shade600,
//     surface: Colors.white,
//     onPrimary: Colors.white,
//     onSecondary: Colors.white,
//     onSurface: Colors.black87,
//   ),
//   inputDecorationTheme: InputDecorationTheme(
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: BorderSide(color: Colors.grey.shade400),
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: BorderSide(color: Colors.grey.shade400),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
//     ),
//     errorBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: const BorderSide(color: Colors.red),
//     ),
//     focusedErrorBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: const BorderSide(color: Colors.red, width: 2),
//     ),
//     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//     filled: true,
//     fillColor: Colors.white,
//   ),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       padding: const EdgeInsets.symmetric(vertical: 16),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       backgroundColor: Colors.blue.shade800,
//       foregroundColor: Colors.white,
//       elevation: 2,
//       textStyle: const TextStyle(fontWeight: FontWeight.w600),
//     ),
//   ),
//   checkboxTheme: CheckboxThemeData(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//     side: BorderSide(color: Colors.grey.shade600),
//   ),
//   appBarTheme: AppBarTheme(
//     elevation: 0,
//     centerTitle: true,
//     backgroundColor: Colors.blue.shade800,
//     titleTextStyle: const TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w600,
//       color: Colors.white,
//     ),
//     iconTheme: const IconThemeData(color: Colors.white),
//   ),
// );

// final ThemeData darkTheme = ThemeData(
//   useMaterial3: true,
//   colorScheme: ColorScheme.dark(
//     primary: Colors.blue.shade500,
//     secondary: Colors.blue.shade400,
//     surface: Colors.grey.shade900,
//     onPrimary: Colors.black87,
//     onSecondary: Colors.black87,
//     onSurface: Colors.white,
//   ),
//   inputDecorationTheme: InputDecorationTheme(
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: BorderSide(color: Colors.grey.shade700),
//     ),
//     enabledBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: BorderSide(color: Colors.grey.shade700),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: BorderSide(color: Colors.blue.shade500, width: 2),
//     ),
//     errorBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: const BorderSide(color: Colors.red),
//     ),
//     focusedErrorBorder: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: const BorderSide(color: Colors.red, width: 2),
//     ),
//     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//     filled: true,
//     fillColor: Colors.grey.shade900,
//   ),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       padding: const EdgeInsets.symmetric(vertical: 16),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       backgroundColor: Colors.blue.shade500,
//       foregroundColor: Colors.black87,
//       elevation: 2,
//       textStyle: const TextStyle(fontWeight: FontWeight.w600),
//     ),
//   ),
//   checkboxTheme: CheckboxThemeData(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//     side: BorderSide(color: Colors.grey.shade400),
//   ),
//   appBarTheme: AppBarTheme(
//     elevation: 0,
//     centerTitle: true,
//     backgroundColor: Colors.grey.shade900,
//     titleTextStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//   ),
// );

// class MyHomePage extends StatelessWidget {
//   final Function(bool) onThemeChanged;

//   const MyHomePage({super.key, required this.onThemeChanged});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final isDark = theme.brightness == Brightness.dark;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Auth App'),
//         actions: [
//           IconButton(
//             icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
//             onPressed: () => onThemeChanged(!isDark),
//             tooltip: isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode',
//           ),
//         ],
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(32),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.fingerprint,
//                   size: 80,
//                   color: theme.colorScheme.primary,
//                 ),
//                 const SizedBox(height: 24),
//                 Text(
//                   'Welcome to Auth App',
//                   style: theme.textTheme.headlineSmall?.copyWith(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Secure authentication made simple',
//                   style: theme.textTheme.bodyMedium?.copyWith(
//                     color: theme.textTheme.bodySmall?.color,
//                   ),
//                 ),
//                 const SizedBox(height: 40),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => const LoginPage()),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                     ),
//                     child: const Text('Login'),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 SizedBox(
//                   width: double.infinity,
//                   child: OutlinedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const RegistrationPage(),
//                         ),
//                       );
//                     },
//                     style: OutlinedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       side: BorderSide(color: theme.colorScheme.primary),
//                     ),
//                     child: Text(
//                       'Register',
//                       style: TextStyle(color: theme.colorScheme.primary),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (_) => const DashboardPage()),
//                     );
//                   },
//                   child: const Text('Continue as Guest'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_auth/api_service.dart'; // Adjust import path

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Laravel Auth',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthScreen(),
    );
  }
}

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController(); // For registration
  final _passwordConfirmationController =
      TextEditingController(); // For registration

  bool _isLogin = true;
  String? _message;

  void _submitAuthForm() async {
    setState(() {
      _message = null;
    });

    if (_isLogin) {
      final response = await ApiService.login(
        _emailController.text,
        _passwordController.text,
      );
      if (response != null) {
        setState(() {
          _message = 'Logged in as ${response['user']['name']}!';
        });
        // Navigate to a dashboard or home screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        setState(() {
          _message = 'Login failed. Please check your credentials.';
        });
      }
    } else {
      final response = await ApiService.register(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
        _passwordConfirmationController.text,
      );
      if (response != null) {
        setState(() {
          _message = 'Registered and logged in as ${response['user']['name']}!';
        });
        // Navigate to a dashboard or home screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        setState(() {
          _message = 'Registration failed. Please try again.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isLogin ? 'Login' : 'Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (!_isLogin)
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            if (!_isLogin)
              TextField(
                controller: _passwordConfirmationController,
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitAuthForm,
              child: Text(_isLogin ? 'Login' : 'Register'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isLogin = !_isLogin;
                  _message = null;
                });
              },
              child: Text(
                _isLogin ? 'Create an account' : 'I already have an account',
              ),
            ),
            if (_message != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_message!, style: TextStyle(color: Colors.red)),
              ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await ApiService.logout();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AuthScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<Map<String, dynamic>?>(
          future: ApiService.getUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData && snapshot.data != null) {
              return Text('Hello, ${snapshot.data!['name']}!');
            } else {
              return Text('User not logged in.');
            }
          },
        ),
      ),
    );
  }
}
