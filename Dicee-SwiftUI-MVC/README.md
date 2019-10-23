# Dicee-SwiftUI-MVC
Based on Angela Yu's amazing course on Udemy, "iOS 13 &amp; Swift 5 - The Complete iOS App Development Bootcamp"

Made the following changes:
1. Extracted model to a new class `DiceeModel`
2. Made the model derived from `ObservableObject`
3. `@Published` the model's state as a new dictionary called `die`. The two dice are `die[1]` and die[2]`
4. Updated the ContentView reference the model as an `@ObservedObject`
5. Updated the initializer to DiceView to pass the `diceeModel.die[1]` instead of `leftDiceValue`

Next steps:
-Figure out how to animate the dice roll

