/// The MaterialApp widget is the starting point for building a Flutter app with Material Design.
/// It provides foundational functionality, such as navigation, themes, and
/// localization, and acts as the root widget of your app.
///
/// Key properties of Material App:
///   1. Title: Sets the title of the app, visible in tasks switchers.
///        syntex:
///              title: 'This is app',
///
///   2. theme: Defines the visual theme of the app,
///             including color, fonts, and shapes.
///             syntex:
///                   theme: ThemeData(
///                         primarySwatch: Colors.blue
///                         )
///
///   3. home: Default widget displayed when the app startes.
///            syntex:
///                  home: MyApp(),
///
///   4. routes: A Map of route names for named navigation.
///             syntex:
///                  routes: {
///                    '/': (context)=> HomePage(),
///                    '/details': (context)=> Details()
///                   }
///
///   5. initialRoute: Specifies the initial route if multiple routes are defined.
///                  syntex:
///                        initialRoute: '/'
///
///   6. debugShowCheckedModeBanner: It show 'Debug" banner in development mode.
///                  syntex:
///                         debugShowCheckedModeBanner: false,
///
///   7. localizationsDelegates and suppoertedLocales: Used for internationalization.
///                  syntex:
///                        supportedLocales: [
///                                  Locale('en', 'US'),
///                                  Locale('es', 'ES'),
///                                  ],
///
///
///