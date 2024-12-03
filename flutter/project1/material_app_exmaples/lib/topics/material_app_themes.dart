/// In Flutter, the MaterialApp widget provides a theme property to define the
/// look and feel of your app,
/// including colors, text styles, and other visual elements.
///
/// themeData Properties:
///  1. Colors:
///         primarySwatch: The primary color of the app.
///         scaffoldBackgroundColor: Background color for all Scaffold widgets.
///         colorScheme: Modern way to define colors for Material 3.
///
///  2. Typography: Define text style globally using textTheme
///         syntex:
///         textTheme: TextTheme(
///                 headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
///                 bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
///                 ),
///
///  3. AppBarTheme: Customize the appbar theme
///          syntex:
///          appBarTheme: AppBarTheme(
///                   color: Colors.teal,
///                   elevation: 4,
///                   titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
///                  ),
///
///  4. ButtonTheme: Define styles for buttons,
///                  such as ElevatedButton and TextButton
///                  syntex:
///                  elevatedButtonTheme: ElevatedButtonThemeData(
///                         style: ElevatedButton.styleFrom(
///                         primary: Colors.teal,
///                         textStyle: TextStyle(fontSize: 18),
///                         ),
///                     ),
///
///  5. Dark theme support:
///                  syntex:
///                  MaterialApp(
///                      theme: ThemeData.light(),
///                      darkTheme: ThemeData.dark(),
///                      themeMode: ThemeMode.system,
///                      )
///
///  6.