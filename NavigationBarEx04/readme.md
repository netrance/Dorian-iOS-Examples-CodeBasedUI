# Introduction

This project is the 4th example of navigation bar based on iOS in Swift. Its definition is code-based, not using storyboard. This example demonstrates

* how to open another view controller by clicking buttons on the navigation bar
* how to come back to previous view controller

---

# Screenshot

This sample app have 3 screens: Step 1, 2 and 3.
* You can move from Step 1 to 2 by clicking 'Step 2 >' button.
* You can move from Step 2 to 3 by clicking 'Step 3 >' button.
* You can come back to Step 2 by clicking '< Step 2' button.
* You can come back to Step 1 by clicking '< Step 1' button.

<img src="./screenshot.gif" width="480"></img>

---

# How to open another view controller by clicking buttons on the navigation bar

* Step 1: Define a view controller.
* Step 2: Push the view controller into the top of the navigation stack by calling pushViewController method of UINavigationController object.

```
let step2VC = Step2ViewController()
navigationController?.pushViewController(step2VC, animated: true)
```

---

# How to come back to previous view controller

* Just call popViewController method of UINavigationController object from the current view controller

```
navigationController?.popViewController(animated: true)
```

---

# UI Test

Tested clicking buttons on the navigation bar.

* Clicks 'Step 2 >' button, and tests if Step 2 view controller opens by checking if the central static text is 'This is Step 2.'. 
* Clicks 'Step 3 >' button, and tests if Step 3 view controller opens by checking if the central static text is 'This is Step 3.'. 
* Clicks '< Step 2' button, and tests if the app shows Step 2 again by checking if the central static text is 'This is Step 2.'. 
* Clicks '< Step 1' button, and tests if the app shows Step 1 again by checking if the central static text is 'This is Step 1.'. 

```
import XCTest

class NavigationBarEx04UITests: XCTestCase {

    // ...

    func testClickingBarButtons() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertEqual("This is step 1 page.", app.staticTexts["step1DescriptionLabel"].label)
        app.buttons["step2BarButton"].tap()
        XCTAssertEqual("This is step 2 page.", app.staticTexts["step2DescriptionLabel"].label)
        app.buttons["step3BarButton"].tap()
        XCTAssertEqual("This is step 3 page.", app.staticTexts["step3DescriptionLabel"].label)
        app.buttons["step2BarButton"].tap()
        XCTAssertEqual("This is step 2 page.", app.staticTexts["step2DescriptionLabel"].label)
        app.buttons["step1BarButton"].tap()
        XCTAssertEqual("This is step 1 page.", app.staticTexts["step1DescriptionLabel"].label)
    }

}
```

---

# References

* [Customizing Your App’s Navigation Bar](https://developer.apple.com/documentation/uikit/uinavigationcontroller/customizing_your_app_s_navigation_bar)
* [pushViewController(_:animated:)](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621887-pushviewcontroller)
* [popViewController(animated:)](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621886-popviewcontroller)

* [UIButton class](https://developer.apple.com/documentation/uikit/uibutton)
* [UINavigationBar class](https://developer.apple.com/documentation/uikit/uinavigationbar)
* [UINavigationController class](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
