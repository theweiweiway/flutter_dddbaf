## DDDBF (Domain Driven Design | Bloc | Auto_route | Firebase)

This is an opinionated starter project that is heavy inspired by [ResoCoder's DDD series](https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U).

It serves as a comprehensive blueprint for apps that require common

- multiple navigation stacks
- deep link handling
- push notification handling
- authentication (via Firebase Auth)

All within an organized, easily maintainable app structure.

This app has two navigation stacks, as well as a third authentication navigation stack that has a simple login and sign-up flow.

### Table of Contents

1. [Folder architecture](#folder_architecture)
2. [DDD folder architecture](#domain-driven-design)
3. [DDD folder architecture](#domain-driven-design)

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

This project comes with a bottom navigation bar and 2 navigation stacks. This is a custom implementation of a bottom navigation bar that doesn't use the BottomNavigationBar widget, which allows for more customization over the bottom navbar in terms of appearance and behaviour.

All relevant code for the bottom navigation bar is in `presentation/widgets/core/navigation`

Nested navigators are used to handle each separate navigation stack. Nested navigators may be found in `presentation/navigation/auth/auth_navigator.dart` and are responsible for:

- providing an `ExtendedNavigator` widget which builds all the necessary routes for that stack via `auto_route`
- providing all blocs and cubits required for that navigations stack

In order to show the appropriate navigation stack in the app, an `IndexedStack` widget is used in conjunction with the Navigation Cubit (`application/navigation/navigation/cubit`). The file that handles which navigation stack is acutally being shown is in `presentation/app.dart`. In this navigation setup, we gain the following advantages:

- Preserved state for each stack so you can go back and forth between stack without losing where you were
- Cleaner and simpler navigation since each navigation stack has it's own navigator

#### Bloc state management

This project starts out with 2 Cubits that wrap the entirety of the app, which handle:

1. Navigation
2. Authentication

The navigation cubit handles showing and hiding the bottom navigation bar, as well as the currently selected navigation stack. Read more in the navigation section below.

The authentication cubit handles the current authentication state (logged in or loggged out), and the user fields in each of those states. Read more about authenticaton below.

States are all handled by Freezed. Please note that navigation state is straightforward with no unions while authentication state can only be one of two union states: `AuthState.loggedIn` or `AuthState.loggedOut`. This is important to highlight since these are 2 distinctly different ways of setting up Freezed classes that have consequences down the road in how the classes may be used.

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

- added the line `pod 'FirebaseFirestore', :git => 'https://github.com/invertase/firestore-ios-sdk-frameworks.git', :tag => '6.26.0'` between the lines `target 'Runner' do` and `use_frameworks!` in `ios/Podfile` - [This improves iOS Build for Firebase](https://firebase.flutter.dev/docs/overview/)

## Problems Encountered
