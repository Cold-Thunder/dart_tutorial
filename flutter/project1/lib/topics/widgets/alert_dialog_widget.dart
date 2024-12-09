/// An alert dialog is a useful feature that notifies the user with important
/// information to make a decision or provide the ability to choose a
/// specific action or list of actions.
///
/// It is a pop-up box that appears at the
///       top of the app content
///       and the middle of the screen.
///
/// It can be dismissed by user.
///
/// For thie purpose we use AlertDialog():
/// Properties of AlertDialog():
///     1. title: It gives the title of the AlertDialog Box;
///
///               Syntex:
///               AlertDialog(title: Text('adad'));
///
///
///     2. actions: If we need to create buttons below of the content, we use it.
///                 It defines action properties only.
///
///                 Syntex:
///                 AlertDialog(
///                     action: [
///                         ElevatedButton(child: 'adad'),
///                         ]
///                        )
///
///     3. content: it defines the body of the alertbox;
///                 Syntex:
///                 AlertDialog(
///                   content: Text('adada')
///                 )
///
///     4. contentPadding: it gives required padding for content
///                     Syntex:
///                     AlertDialog(
///                       contentPadding: EdgeInsets.all(10)
///                     )
///
///     5. shape: this property provides the shape of the AlertDialog.
///                   Syntex:
///                   AlertDialog(
///                     shape: CircleBorder()
///                   )
///
///    There are different type of AlertDialog():
///       1. Basic AlertDialog
///       2. Confirmation AlertDialog
///       3. Select AlertDialog
///       4. TextField AlertDialog