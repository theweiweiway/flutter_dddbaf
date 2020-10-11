# DDDBF (Domain Driven Design | Bloc | Firebase)

This is an opinionated starter project that is heavy inspired by [ResoCoder's DDD series](https://www.youtube.com/watch?v=RMiN59x3uH0&list=PLB6lc7nQ1n4iS5p-IezFFgqP6YvAJy84U).

#### Domain Driven Design

There are 4 folders in this project:

- presentation (for everything UI)
  |
  --- screens
  --- widgets
- application (for state management and logic)
  |
  --- auth
  --- navigation
- domain
  |
  --- core
  |
  --- failure
  --- success
  --- auth
  --- navigation
- infrastrcture
  |
  --- core
  --- auth

#### Bloc state management

This project starts out with 2 Cubits in the application folder that handle the 2 most fundamental aspects of 80% of apps:

1. Navigation
2. Authentication

The navigation cubit handles showing and hiding the bottom navigation bar, as well as the currently selected navigation stack. Read more in the navigation section below.

The authentication cubit handles the current authentication state (logged in or loggged out), and the user fields in each of those states. Read more about authenticaton below.

States are all handled by Freezed. Please note that navigation state is straightforward with no unions while authentication state can only be one of two union states: `AuthState.loggedIn` or `AuthState.loggedOut`. This is important to highlight since these are 2 distinctly different ways of setting up Freezed that have consequences down the road in how the classes are used.

#### Navigation

This project comes with a bottom navigation bar and 2 navigation stacks. This is a custom implementation without using the default BottomNavigationBar widget for the following reasons:

- More customization over the bottom navbar appearances and animations
- more control on when it is shown/hidden

All relevant code for the bottom navigation bar is in `presentation/widgets/core/navigation`

Nested navigators are used to handle each separate navigation stack. These nested navigators are combined with an IndexedStack widget and Navigation cubit in `presentation/app.dart` to handle switching between navigation stacks. The advantages of this approach are listed below:

- Preserved state for each stack so you can go back and forth between stack without losing where you were
- Cleaner and simpler navigation since each navigation stack has it's own navigator

#### Authentication

Google's Firebase auth is used in this project, specifically only email and password (no oauth flows).

#### HTTP Requesets

Dio

#### Dependency Injection

Get It + Injectable

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
