# Restaurant Talks

This is an app aimed at improving operations in the food and beverage department of hotels (mainly the dining hall).<br>
Its primary goal is to enhance communication between the hall and the kitchen.<br>
Designed for use in the field, it focuses on a design that can be used quickly and easily with just a tap.

## URL
+ App Store: <a href='https://apps.apple.com/jp/app/restaurant-talks/id1670850651?l=en'>Restaurant Talks</a><br>
+ Test Account (email: testtest@test.com, password: testtest)
<img alt="Login Screen" src="https://user-images.githubusercontent.com/120234755/219822371-315ab187-31aa-4edc-8a17-96b479a891e3.jpg">


## Technology Stack
+ Flutter 3.3.8
+ Android toolchain - develop for Android devices (Android SDK version 33.0.1)
+ Xcode - develop for iOS and macOS (Xcode 14.2)
+ Android Studio (version 2021.3)
+ VS Code (version 1.67.2)
+ Framework • revision 52b3dc25f6 (3 months ago) • 2022-11-09 12:09:26 +0800
+ Engine • revision 857bd6b74c
+ Tools • Dart 2.18.4 • DevTools 2.15.0

<Packages>
+ image_picker: ^0.8.4+4
+ flutter_chat_ui: ^1.6.6
+ weather: ^2.0.1
+ firebase_core: ^2.4.1
+ cloud_firestore: ^4.3.1
+ firebase_auth: ^4.2.4
+ pedantic_mono: any
+ firebase_storage: ^11.0.10
+ google_fonts: ^3.0.1
+ flutter_launcher_icons: ^0.11.0


[//]: # (## ER Diagram)

[//]: # (<img width="674" alt="ER Diagram" src="https://user-images.githubusercontent.com/66105826/118458949-33328d00-b736-11eb-8a2f-6bc3f9c464a8.png">)

## Development Background
1. There was stress due to lack of communication between the hall and the kitchen.
    + For example, the hall staff did not know how many appetizers or salads were prepared. Therefore, they had to confirm by speaking during busy times, causing stress for both sides.
    + To solve this problem, we thought a system to manage inventory would be helpful.

2. We considered reporting daily kitchen reports via chat so that everyone could see them.
    + There were often omissions in handovers within the kitchen after reports between departments. We thought visualizing these via chat would be helpful.
    + There were instances where staff were called to the kitchen via walkie-talkie for non-urgent matters. We believed this issue could be prevented.
    + For non-urgent matters, we thought it would be better to communicate via chat when time permits.

3. Achieving these objectives could lead to the following additional benefits:
    + Inventory management reducing waste
    + Improved guest service

## Focus During Development
+ Making it user-friendly even for first-time users
    + As it is an app for operational improvement, compared to consumer-oriented apps, we struggled to make it easy for first-time users to understand.
+ Making it usable not only in my previous job but also in other places → Making it scalable
    + We omitted features that were too specific and initially planned, focusing on simplicity.
+ Aiming to develop an app that can be used quickly and efficiently with smartphones or tablets in real-world scenarios
    + Since editing numbers is a main feature, we aimed to enhance the UX by allowing direct access from the list screen to the edit screen, and by placing multiple registration buttons.

## Feature List (Detailed usage instructions are described below.)

+ Function to manage the count of dishes and beverages
+ Image upload feature
+ Category sorting feature
+ Chat feature between kitchen and hall
+ Asynchronous communication feature for chat
+ Pagination feature
+ Feature to share the remaining number of guests
+ User management feature
+ Feature to display weather

## Detailed App Functions, Usage Instructions
### Inventory Management Feature

<img alt="Food" src="https://user-images.githubusercontent.com/120234755/219822370-43e3f34d-4d12-4633-8907-653ef3a98530.jpg">

+ The main feature for managing inventory of food and other items.<br>
+ Inventory management of food<br>
  1. When the kitchen prepares or cooks food, they register the number made.<br>
  2. When serving registered food, they register the number served.<br>
  3. The kitchen checks and cooks when food items are running low.<br>

### Chat Feature
+ Designed more for sharing reports and checking on things than for real-time quick chatting.
+ Reduces impromptu communication using walkie-talkies, allowing for message exchanges when both parties have time, thereby improving efficiency.

  <img alt="Chat" src="https://user-images.githubusercontent.com/120234755/219822368-d6f125b7-10b9-4baa-ba84-72768380413c.jpg">

### Number of Guests Management Feature<br>
1. Continuously register the number of remaining guests and share with the kitchen.<br>

### Weather Display Feature<br>
+ Displays the weather in the registered area
+ Knowing the outside weather while inside the restaurant can contribute to improving service quality.

## Future Improvement Plans
+ Adding a feature to place orders directly from the order list
+ Enhancing testing
+ Push notification feature
+ Payment feature
+ Search feature
+ Introducing river_pod for state management
+ Improving weather display to show more detailed areas rather than just by prefecture
