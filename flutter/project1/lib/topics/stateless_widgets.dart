/// Stateless widgets:
///   It doesn't have any state information.
///   It remains static throughout it's life cycle.
///
/// Examples of stateless widgets are:
///   Text,
///   Row,
///   Column
///   Container etc.
///
/// Syntex:
/// class MyStatelessCarWidget extends StatelessWidget {
///   const MyStatelessCarWidget ({ Key key }) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return Container(color: const Color(0x0xFEEFE));
///   }
/// }