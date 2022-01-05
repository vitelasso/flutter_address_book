# Address Book

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Flutter version

[✓] Flutter (Channel stable, 2.5.3, on macOS 11.2.3 20D91 darwin-x64, locale pt-PT)


## Libraries

- grouped_list             //grouped list widget
- auto_route               //routing tool 
- auto_route_generator     //code generator library for the routes of the app
- flutter_lints            //helper to linting problems

## Architecture

Since this is a (really) simple scenario, regarding the state management, no professional solution was used. 

So with just a single StatefulWidget managing two properties, it's possible to manage our app state:

 1. _widgetsVisible     // boolean to set the visibility of the buttons on top and above the address book list
 2. _filteredContacts  // list with the filtered contacts from the search bar

Regarding the scaling and performance of the app, the possible solution (and the one i always follow) is to use the BLoC Pattern, and if interested, please let me know, for me to quickly create that solution.

NOTES: The organization of the code could/could not be improved, regarding the developer opinion in the architecture, this is just an example approach that i took.

## Analyzing

For the current developer environment running the analyze command (flutter analyze) no issues were found.

## Testing

Some steps should be developed in order to create some unit and widget testing. Since this is just a proof of concept, the testing part was not done. 
Regarding Manual Testings, the app was tested in an Android Virtual Emulator (Pixel 2), using Genymotion.

## Scroll to Index API (Problem)
Since ListView in Flutter doesn't have a built-in approach to a scrollToIndex() function, the problem to create such a problem is that the developer should come with his own implementation to measure to that element’s offset for animateTo() or jumpTo(). Another solution is to search for (already developed) plugins that should overcome this issue.

## Improvements

Regarding improvements, and as stated before, the code could be improved regarding the state management (i didn't used because this it's really a simple scenario), the widget abstraction and dependency injection was taking into account, and an extensive Testing should be also developed in order to build trust in the code.
