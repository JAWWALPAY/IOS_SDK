# AcceptCardSDK

[![CI Status](https://img.shields.io/travis/mohamedghoneim/AcceptCardSDK.svg?style=flat)](https://travis-ci.org/mohamedghoneim/AcceptCardSDK)
[![Version](https://img.shields.io/cocoapods/v/AcceptCardSDK.svg?style=flat)](https://cocoapods.org/pods/AcceptCardSDK)
[![License](https://img.shields.io/cocoapods/l/AcceptCardSDK.svg?style=flat)](https://cocoapods.org/pods/AcceptCardSDK)
[![Platform](https://img.shields.io/cocoapods/p/AcceptCardSDK.svg?style=flat)](https://cocoapods.org/pods/AcceptCardSDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

AcceptCardSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AcceptCardSDK', '5.1.5'
```

And in the general settings of your project, under libraried and frameworks
change the library from "Do not embed" to "Embed and Sign"

## Usage

import the framework
```swift
import AcceptSDK
```

add the delegate to the class, and add the protocol stubs
```swift
class ViewController: UIViewController, AcceptSDKDelegate {
```


then create a constant
```swift
let accept = AcceptSDK()
```

link the delegate in viewDidLoad
```swift
override func viewDidLoad() {
super.viewDidLoad()

// Do any additional setup after loading the view.
accept.delegate = self

//the rest of your code
}
```

then create the variables
```swift
// Replace this string with your payment key
let KEY: String = "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SjFjMlZ5WDJsa0lqb3pNU3dpYjNKa1pYSWlPbnNpWkdWc2FYWmxjbmxmYm1WbFpHVmtJanBtWVd4elpTd2lZVzF2ZFc1MFgyTmxiblJ6SWpveE1EQXNJbU4xY25KbGJtTjVJam9pUlVkUUlpd2lhWFJsYlhNaU9sdGRmU3dpWTNWeWNtVnVZM2tpT2lKRlIxQWlMQ0pwYm5SbFozSmhkR2x2Ymw5cFpDSTZOVGMyTWl3aWJHOWphMTl2Y21SbGNsOTNhR1Z1WDNCaGFXUWlPbVpoYkhObExDSndiV3RmYVhBaU9pSXhOVFl1TWpFMUxqRTNOeTR4TWpNaUxDSmlhV3hzYVc1blgyUmhkR0VpT25zaVptbHljM1JmYm1GdFpTSTZJa05zYVdabWIzSmtJaXdpYkdGemRGOXVZVzFsSWpvaVRtbGpiMnhoY3lJc0luTjBjbVZsZENJNklrVjBhR0Z1SUV4aGJtUWlMQ0ppZFdsc1pHbHVaeUk2SWpnd01qZ2lMQ0ptYkc5dmNpSTZJalF5SWl3aVlYQmhjblJ0Wlc1MElqb2lPREF6SWl3aVkybDBlU0k2SWtwaGMydHZiSE5yYVdKMWNtZG9JaXdpYzNSaGRHVWlPaUpWZEdGb0lpd2lZMjkxYm5SeWVTSTZJa05TSWl3aVpXMWhhV3dpT2lKamJHRjFaR1YwZEdVd09VQmxlR0V1WTI5dElpd2ljR2h2Ym1WZmJuVnRZbVZ5SWpvaUt6ZzJLRGdwT1RFek5USXhNRFE0TnlJc0luQnZjM1JoYkY5amIyUmxJam9pTURFNE9UZ2lMQ0psZUhSeVlWOWtaWE5qY21sd2RHbHZiaUk2SWs1QkluMHNJbUZ0YjNWdWRGOWpaVzUwY3lJNk1UQXdmUS5OVmFuOU5IUXM3NWowb2g4LTNaYkU0QkhLY05Jb0RkQmlJbGpiWUs3UUptMDZqN3VTX0dTVGpaeUtONElWem1JajktUEhFak5GdnluNEFhOUkzb1p5Zw=="

// Place your iFrame here
let iFrame = ""
```
now call the function
```swift
do {
           try accept.presentPayVC(vC: self, paymentKey: KEY, iFrame: iFrame)
       } catch AcceptSDKError.MissingArgumentError(let errorMessage) {
           print(errorMessage)
       }  catch let error {
           print(error.localizedDescription)
       }
```

## Author

mohamedghoneim, mohamedghoneim@weaccept.co

## License

AcceptCardSDK is available under the MIT license. See the LICENSE file for more info.
