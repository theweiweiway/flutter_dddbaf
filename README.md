# plz dont use this it's outdated and its shit

# DDDBF (Domain Driven Design | Bloc | Auto_route | Firebase)

This is a super opinionated starter project that is heavy inspired by [ResoCoder's DDD series](https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U).

It serves as a comprehensive blueprint for many of the apps that are created nowadays, and includes the following capabilities:

- multiple bottom navigation bar stacks (with persistent state across stacks)
- deep link handling
- push notification handling
- authentication (via Firebase Auth)
- http requests

## Table of Contents

1. [Dependencies](#dependencies)
1. [Folder architecture](#folder_architecture)
1. [HTTP Requests](#http_requests)
1. [Navigation](#navigation)

### <a name="dependencies"></a> Dependencies

This app uses many popular dependencies to handle core functionalities of the app. Please see the `pubspec.yaml` for more information about the dependencies. Thanks to Felix Angelov, Remi Rousselet and Milad Alakarie for creating many of these amazing libraries.

#### <a name="folder_architecture"></a> Folder architecture

There are 4 folders in this project:

- presentation (for everything UI)
  |
  --- navigation
  --- screens
  --- widgets
- application (for state management and logic)
  |
  --- auth
  --- core
  --- navigation
- domain
  |
  --- auth
  --- core // for core classes that handle app functionality (like Failure and Success class)
  --- shared // for nested classes that are shared between many classes
  |
  --- failure
  --- success
  --- utm_parameters
  --- navigation
- infrastrcture
  |
  --- core
  --- auth

#### Navigation

This project comes with a bottom navigation bar that has 2 navigation stacks (Search stack, and Account stack). This is a custom implementation of a bottom navigation bar that doesn't use the Material BottomNavigationBar widget, which allows for more customization over the bottom navbar in terms of appearance and behaviour.

All relevant code for the bottom navigation bar is in `presentation/widgets/core/navigation`

Nested navigators are used to handle each separate navigation stack. Nested navigators may be found in `presentation/navigation/auth/auth_navigator.dart` and are responsible for:

- providing an `ExtendedNavigator` widget which builds all the necessary routes for that stack via the `auto_route` library
- providing all blocs and cubits required for that navigations stack

In order to show the appropriate navigation stack in the app, an `IndexedStack` widget is used in conjunction with the Navigation Cubit (`application/navigation/navigation/cubit`). The file that handles which navigation stack is acutally being shown is in `presentation/app.dart`. In this navigation setup, we gain the following advantages:

- Preserved state for each stack so you can go back and forth between stack without losing where you were
- Cleaner and simpler navigation since each navigation stack has it's own navigator

#### Bloc state management

This project starts out with 2 Cubits that wrap the entirety of the app, which handle:

1. Navigation
2. Authentication

The navigation cubit handles showing and hiding the bottom navigation bar, as well as the currently selected navigation stack.

The authentication cubit handles the current authentication state (logged in or loggged out), and the user fields in each of those states. Read more about authenticaton below.

Bloc and Cubit States are handled by the `Freezed` library. Please note that navigation state is straightforward with no unions while the authentication state can only be one of two union states: `AuthState.loggedIn` or `AuthState.loggedOut`. This is important to highlight since these are 2 distinctly different ways of setting up Freezed classes that have consequences down the road in how the classes are used.

#### Authentication

Google's Firebase auth is used in this project, specifically:

- sign up with email and password
- no ouath

#### HTTP Requests

Dio

##### Success

-

##### Failure

- HTTP Errors are caught and turned into `Failure` objects
- These Failure objects are propogated to the UI via `showErrorFlushbar`

#### Database

Cloud Firestore is

#### Push Notifications

Firebase Cloud Messaging

#### Analytics

Google Analytics

## TODO

1. Create a firebase project and add the correspnoding google .plist and .json files for iOS and android respectively
2. Change the app title in main.dart to whatever your app is named

## Setup

- added the line `pod 'FirebaseFirestore', :git => 'https://github.com/invertase/firestore-ios-sdk-frameworks.git', :tag => '6.26.0'` between the lines `target 'Runner' do` and `use_frameworks!` in `ios/Podfile` - [This improves iOS build times for Firebase](https://firebase.flutter.dev/docs/overview/)

## Problems Encountered
