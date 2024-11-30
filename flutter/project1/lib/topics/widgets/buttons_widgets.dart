/// Buttons are the graphical control element that provides a user to trigger
/// an event such as taking actions, making choices, searching things, and many more.
///
/// Buttons are the Flutter widgets,
/// which is a part of the material design library.
///
/// features of Buttons:
/// --------------------
///  1. We can easily apply themes on buttons, shapes, color, animation, and behavior.
///  2. We can also theme icons and text inside the button.
///  3. Buttons can be composed of different child widgets for different characteristics.
///
/// Types of Flutter Buttons:
/// ----------------------------
///   1. Flat Button : It is a text label button that does not have much
///                    decoration and displayed without any elevation.
///                    2 required properties:
///                      1. child:
///                      2. onPressed:
///
///   2. Raised Button : It is a button, which is based on the material
///                      widget and has a rectangular body.
///                      Similar to a FlatButton, but has Elevation.
///
///                      Methods:
///                          1. onPressed:
///                          2. onLongPressed:
///
///                      It has some properties:
///                         1. Text Color
///                         2. shape
///                         3. padding
///                         4. button color
///                         5. color of button when disabled
///                         6. animation time
///                         7. elevation
///
///   #. ElevatedButton: It is alternative of Raised button.
///
///
///   3. Floating Action Button : A FAB button is a circular icon button that
///                               triggers the primary action in our application.
///
///                               it is mainly used for adding, refreshing or
///                               sharing the content.
///                               2 types of FloatingActionButton:
///                                  1. FloatingActionButton:
///                                          a simple circular floating button with a child widget.
///                                  2. FloatingActionButton.extended:
///                                         a wide floating button along with an icon and a label inside it.
///
///   4. Drop Down Button : A drop-down button is used to create a nice overlay
///                         on the screen that allows the user to select any item from multiple options.
///
///                         syntex:
///                         DropdownButton<T>(
///                              value: selectedValue,           // Currently selected value
///                              items: <DropdownMenuItem<T>>[   // List of dropdown items
///                                  DropdownMenuItem<T>(
///                                     value: value1,
///                                     child: Text("Option 1"),
///                                     ),
///                                 DropdownMenuItem<T>(
///                                     value: value2,
///                                     child: Text("Option 2"),
///                                     ),
///                                ],
///                              onChanged: (T? newValue) {      // Callback when an item is selected
///                              setState(() {
///                              selectedValue = newValue;
///                              });
///                           },
///                           hint: Text("Select an option"), // Hint text when no value is selected
///                         )
///
///
///   5. Icon Button :
///                   An IconButton is a picture printed on the Material widget.
///                   It is a useful widget that gives the Flutter UI a material
///                   design feel. We can also customize the look and feel of this button.
///                   Syntex:
///                   IconButton(
///                           icon: Icon(Icons.volume_up),
///                           iconSize: 50,
///                           color: Colors.brown,
///                           tooltip: 'Increase volume by 5',
///                           onPressed: () {
///                           setState(() {
///                                _speakervolume += 5;
///                           });
///                           },
///                          ),
///
///   6. Inkwell Button:
///                   InkWell button is a material design concept, which is used
///                   for touch response. This widget comes under the Material
///                   widget where the ink reactions are actually painted.
///                   It creates the app UI interactive by adding gesture feedback.
///                   It is mainly used for adding splash ripple effect.
///
///                   Syntex:
///                   InkWell(
///                 splashColor: Colors.green,
///                 highlightColor: Colors.blue,
///                 child: Icon(Icons.ring_volume, size: 50),
///                 onTap: () {
///                   setState(() {
///                     _volume += 2;
///                   });
///                 },
///               ),
///
///   7. PopupMenu Button:
///                 It is a button that displays the menu when it is pressed
///                 and then calls the onSelected method the menu is dismissed.
///                 It is because the item from the multiple options is selected.
///                 This button contains a text and an image. It will mainly use
///                 with Settings menu to list all options. It helps in making
///                 a great user experience.
///
///                 Syntex:
///                 PopupMenuButton<Choice>(
///                  onSelected: _select,
///               itemBuilder: (BuildContext context) {
///                 return choices.skip(0).map((Choice choice) {
///                   return PopupMenuItem<Choice>(
///                     value: choice,
///                     child: Text(choice.name),
///                   );
///                 }).toList();
///               },
///             ),
///
///   8. Outline Button:
///                 t is similar to the flat button, but it contains a thin grey
///                 rounded rectangle border. Its outline border is defined by the shape attribute.
///
///                 syntex:
///                 OutlineButton(
///                 child: Text("Outline Button", style: TextStyle(fontSize: 20.0),),
///                 highlightedBorderColor: Colors.red,
///                 shape: RoundedRectangleBorder(
///                     borderRadius: BorderRadius.circular(15)),
///                 onPressed: () {},
///               ),
///             ),
///
///