

/// Flutter's architecture is based on a layered approach with three main layers:
///     1 => the Framework (written in Dart for UI and widgets),
///     2 => the Engine (handles rendering, animations, and low-level platform communication), and
///     3 => the Embedder (platform-specific code for integrating with Android, iOS, and more).
/// This structure ensures a smooth, high-performance UI across platforms.
///
///  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
///  ***********************************************
///  ###############################################
///
///  It takes Google's open-source graphics library, Skia,
///  to render low-level graphics.
///
///  ###############################################
///  ***********************************************
///  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
///
/// Flutter architecture is mainly conprises of four components.
/// 1. Flutter Engine
/// 2. Foundation Library
/// 3. Widgets
/// 4. Design Specific Widgets
///
///
/// 1 => Flutter Engine:
///     It is a portable runtime for high-quality mobile apps and primarily
///     based on the C++ language. It implements Flutter core libraries
///     that include animation and graphics, file and network I/O,
///     plugin architecture, accessibility support, and a dart runtime for
///     developing, compiling, and running Flutter applications. It takes
///     Google's open-source graphics library, Skia, to render low-level graphics.
///
/// 2 => Foundation Library:
///      It contains all the required packages for the basic building blocks of
///      writing a Flutter application. These libraries are written in Dart language.
///
/// 3 => Widget:
///      In Flutter, everything is a widget, which is the core concept of this
///      framework. Widget in the Flutter is basically a user interface component
///      that affects and controls the view and interface of the app.
///      It represents an immutable description of part of the user interface
///      and includes graphics, text, shapes, and animations that are created using widgets.
///
///      In Flutter, the application is itself a widget that contains many sub
///      widgets. It means the app is the top-level widget, and its UI is build
///      using one or more children widgets, which again includes sub child widgets.
///      This feature helps you to create a complex user interface very easily.
///
///      Diagram of Widget Soup:
///
///      MyApp(Top-Level)
///           ||
///           V
///      MaterialApp
///          ||
///          V
///      MyHomePage
///         ||
///         V
///      Scaffold (Widget)
///         ||
///         V
///    -----------------------------------
///   ||                                ||
///   V                                 V
///   AppBar(Property: appBar)          Center(Property: home)
///                                         ||
///                                         V
///                                       Text
///
/// 4 => Design Specific Widget:
///      The Flutter framework has two sets of widgets that conform to specific
///      design languages. These are Material Design for Android application
///      and Cupertino Style for IOS application.