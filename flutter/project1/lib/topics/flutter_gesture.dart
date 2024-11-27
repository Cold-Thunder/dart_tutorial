///Gestures are an interesting feature in Flutter that allows us to interact
///with the mobile app (or any touch-based device). Generally, gestures define
///any physical action or movement of a user in the intention of specific
///control of the mobile device.
///
///
/// Flutter divides the gesture system into two different layers:
///    1.Pointers : Pointers are the first layer that represents
///                 the raw data about user interaction.
///                 =>  It has events, which describe the location and
///                     movement of pointers such as touches, mice,
///                     and style across the screens.
///    2.Gestures : Gestures are the second layer that represents
///                 tap, drag, scale.
///
///
///
///
/// 1. Pointer:
///    Pointer Events Divided into 4 Types:
///      1. PointerDownEvents
///      2. PointerMoveEvents
///      3. PointerUpEvents
///      4. PointerCancelEvents
///
/// 2. Gesture:
///    It is the second layer that represents semantic actions such as
///    tap, drag, and scale, which are recognized from multiple individual pointer events.
///
///    Gesture have different types of events:
///    1. Tap:
///         $ onTapDown
///         $ onTapUp
///         $ onTap
///         $ onTapCancel
///
///    2. DoubleTap: tapping twice in a short time
///         $ onDoubleTap:
///
///    3. Drag: It allows us to touch the surface of the screen with a fingertip
///             and move it from one location to another location and then releasing them.
///         1. Horizontal Drag:
///               $ onHorizontalDragStart
///               $ onHorizontalDragUpdate
///               $ onHorizontalDragEnd
///         2. Varitcal Drag:
///               $ onVerticalDragStart
///               $ onVerticalDragUpdate
///               $ onVerticalDragEnd
///
///    4. LongPress: It means touching the surface of the screen at
///                  a particular location for a long time.
///                  $ onLongPress:
///
///    5. Pan:  It means touching the surface of the screen with a fingertip,
///             which can move in any direction without releasing the fingertip.
///             $ onPanStart
///             $ onPanUpdate
///             $ onPanEnd
///
///