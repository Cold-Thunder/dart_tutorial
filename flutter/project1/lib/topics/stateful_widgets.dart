/// StatefulWidget:
///     StatefulWidget has state information.
///     It has 2 classes:
///         1. State Object
///         2. Widget
///     It is dynamic because it cna change data during the widget lifetime
///
///              #* This widget does not have a build() method.
///              #* It has createState() method,
///                 which returns a class that extends the Flutters State Class.
///
/// Example of Stateful widget are:
///     Checkbox,
///     Radio,
///     Slider,
///     InkWell,
///     Form,
///     TextField.
///
///
/// Syntex:
/// class Car extends StatefulWidget {
///   const Car({ Key key, this.title }) : super(key: key);
///
///   @override
///   _CarState createState() => _CarState();
/// }
///
/// class _CarState extends State<Car> {
///   @override
///   Widget build(BuildContext context) {
///     return Container(
///       color: const Color(0xFEEFE),
///            child: Container(
///             child: Container( //child: Container() )
///         )
///     );
///   }
/// }