<p align="center">
<img src="Assets/deeplink-appwords.png" width="220"/>
</p>
<h1 align="center">AppWords</h1>

<br>

## Requirements

- iOS 9.0+
- Xcode 8.0+
- Swift 3.0+

## Integration Steps

### CocoaPods

To integrate AppWordsSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'AppWordsSDK', :git => 'https://github.com/AGS123/ios-concierge-sdk-pod.git'
end
```

Then, run the following command:

```bash
$ pod install
```


## Using the AppWords SDK in your app

To access the SDK from your code, you will need to import the SDK header file:

```swift
import AppWordsSDK
```

## Initializing

Before you start using the AppWordsSDK you should call initialize method in your App Delegate's application:didFinishLaunchingWithOptions: method.

```swift
AppWordsSDK.shared.initialize(apiToken: "API_TOKEN", appId: "APP_ID") { error in
            
    if error == nil {
        print("AppWordsSDK - initialized")
    } else {
        print("AppWordsSDK - init failed: \(error?.localizedDescription)")
    }
}
```

To find your API Token and App ID:

1) Log into your Deeplink account.

2) Click on the user icon.

3) Click "Account Settings".

<p align="center">
<img src="Assets/Accountsettings.png" />
</p>

4) At the bottom, you will find your API token.

<p align="center">
<img src="Assets/APIaccess.png" />
</p>

5) As for App ID, go to `https://portal.deeplink.me/apps`, and click the edit button for the app of your choice.

6) In the URL bar, your will find the App ID in the URL string, eg. `https://portal.deeplink.me/apps/[APP_ID]/edit`

Notes:

* The completion handler will be called on the main thread.

* The `API_KEY` is the unique developer ID, assigned to you on registering for a Deeplink account. The `APP_ID` is the unique app ID, assigned to the app on creating a new one.

* `API_KEY` and `APP_ID` are check by this method and allow you to send an Intent to the server.

* The SDK status can always be checked by way of the `isInitialized` property.


## Creating an Intent

To create and send an Intent to the server you should call the createIntent(type, view, viewName, location, keywords, completion) method.

```swift
AppWordsSDK.shared.createIntent(type: "tickets", view: self.view, viewName: "Bought Movie Ticket", location: "New York City Upper West Side", keywords: ["Captain America"], completion: { (error, intent) -> Void in
            
    if let createdIntent = intent {
        print("The Intent was created - \(createdIntent)")
    }
            
})
```


Notes:

* The SDK need be initialized before calling this method.

* The `type` parameter is ...

* The `view` parameter refers to the view which will be saved as an image, and sent to the server. It can be set into the `nil` value, which will couse the software to make the screenshot of the whole screen.

* The `viewName` parameter is ...

* The `location` parameter is ...

* The `keywords` parameter is ...

* The `completion` parameter is the block to execute after the Intent is created. This block has no return value and takes two parameters. The first parameter, indicates errors if any occur, the second one is the Intent that was created.

<br>

**Please be in touch if you have any additional questions!**

**[itamar@deeplink.me](mailto:itamar@deeplink.me)**