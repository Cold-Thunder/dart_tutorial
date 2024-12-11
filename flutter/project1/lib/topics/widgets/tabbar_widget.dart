/// Tabbar is mainly used for mobile navigation
/// The styling of the tabs is different for operating system.
///
/// To add tabs to the app, we need to create a TabBar and TabBarView
/// and attach them with the TabController.
///
/// Step-1: Create DefaultTabController
///         Syntex:
///         DefualtTabController(
///           // the number of tabs to display
///           length: 2,
///           child:
///         )
///
/// Step-2: Create Tab.
///         Create tab using TabBar widget.
///         Syntex:
///         DefaultTabController(
///           // the number of tabs to display
///           length: 2,
///           child: AppBar(
///             title: Text('Tabbar'),
///             bottom: TabBar(
///               tabs: [
///                 Tab(icon: Icon(Icons.icon),
///                 Tab(icon: Icon(Icons.icon)
///               ]
///             )
///           )
///         )
///
///  Step-3: Create content for each Tab so that when a tab is selected,
///          it displays the content.
///          For this we have to use TabBarview widget.
///          Syntex:
///          TabBarView(
///           children: []
///          )
///
///  Step-4: Syntex in main.dart
///          Syntex:
///          MaterialApp(
///             home: DefaultTabController(
///                  length: 2,
///                  child: Scaffold(
///                  appBar: AppBar(
///                     title: Text('Flutter Tabs Demo'),
///                     bottom: TabBar(
///                        tabs: [
///                          Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
///                          Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
///                         ],
///                       ),
///                     ),
///                   body: TabBarView(
///                   children: [
///                        FirstScreen(),
///                        SecondScreen(),
///                      ],
///                    ),
///                  ),
///                ),
///              );
///
///