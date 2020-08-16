# Introduction

This project is the 3rd example of table view based on iOS in Swift. Its definition is code-based, not using storyboard. This example demonstrates

* how to implement custom table cells 

---

# Screenshot

This sample app show a table view with customized cells.

<img src="./UINavigationEx03-screen.png" width="480"></img>

Icons made by [Freepik](https://www.flaticon.com/authors/freepik) from [www.flaticon.com](https://www.flaticon.com/)

---

# How to implement custom table cells

* Step 1: Define a model class that represents the data of a cell to be showed.

```
class LinkItem {

    let name: String
    let imageFileName: String
    let linkURL: String
    
    init(name: String, imageFileName: String, linkURL: String) {
        self.name = name
        self.imageFileName = imageFileName
        self.linkURL = linkURL
    }

    // ...
}
```

* Step 2: Define a list with elements of the model class defined in step 2.

```
static func createLinkItemList() -> [LinkItem] {
    return [
        LinkItem(name: "Facebook", imageFileName: "facebook.png", linkURL: "https://www.facebook.com/"),
        LinkItem(name: "Instagram", imageFileName: "instagram.png", linkURL: "https://www.instagram.com/"),
        LinkItem(name: "Linkedin", imageFileName: "linkedin.png", linkURL: "https://www.linkedin.com/"),
        LinkItem(name: "Twitter", imageFileName: "twitter.png", linkURL: "https://twitter.com/"),
        LinkItem(name: "YouTube", imageFileName: "youtube.png", linkURL: "https://www.youtube.com/")
    ]
}
```

* Step 3: Define the cell class that inherits UITableViewCell class

```
class ExTableViewCell: UITableViewCell {

    // Define views.
    let linkImageView = UIImageView()
    let linkNameLabel = UILabel()
    let linkURLLabel = UILabel()

    // Override this constructor if you neither use storyboard nor XIB file. 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initViews() {
        // Initialize the views of this controller
    }

    
    func setContent(_ linkItem: LinkItem) {
        // Set the contents of the views, and show them.
    }

}
```

* Step 4: Define a table view, and set the data source and delegate of the table view.

```
// In this example, self means the view controller of this table view
lazy var exTable = UITableView().then { (table) in
    table.accessibilityIdentifier = "exTable"
    table.dataSource = self
    table.delegate = self
}
```

* Step 4: Implement the data source and delegate of the table view. You can set how many rows the table has, and you can implement how the table views its rows. In this example, each cell just shows the contents of LinkItem objects.

```
extension ExViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return linkItemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: String(describing: ExTableViewCell.self)
        ) as! ExTableViewCell

        cell.setContent(linkItemList[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
   
}
```

---

# Unit Test

* It is impossible to check the contents of image views with UI test, but possible with unit test.
* To test ExViewController class, define its child class ExViewController

```
class TestExViewController: ExViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
```

* Override the methods declared in UITableViewDataSource and UITableViewDelegate protocols and implemented in ExViewController class. 
  * tableView(tableView:numberOfRowsInSection:)
    * Tests if the table view has only one section and five cells.
  * tableView(tableView:cellForRowAt)
    * Tests if cells have right image and text. 

```
extension TestExViewController {

    /// Tests counts of section and link items
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        XCTAssertEqual(0, section)
        XCTAssertEqual(5, linkItemList.count)
        return super.tableView(tableView, numberOfRowsInSection: section)
    }

    ///  Tests contents of each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        guard let cell = super.tableView(tableView, cellForRowAt: indexPath) as? ExTableViewCell else {
            XCTFail("Could not create ExTableViewCell object.")
            return super.tableView(tableView, cellForRowAt: indexPath)
        }
        
        XCTAssertEqual(UIImage(named: linkItemList[row].imageFileName), cell.linkImageView.image)
        XCTAssertEqual(linkItemList[row].name, cell.linkNameLabel.text)
        XCTAssertEqual(linkItemList[row].linkURL, cell.linkURLLabel.text)

        return cell
    }

}
```

* Define and set up TestExViewController object

```
class UITableViewEx03Tests: XCTestCase {

    let testVC = TestExViewController()

    override func setUpWithError() throws {
        testVC.loadViewIfNeeded()    // viewDidLoad() is called.
    }

    // ...
}
```

* Load contents of the table view by calling reloadData() method. The view controller not only read them but also run its test code.

```
class UITableViewEx03Tests: XCTestCase {

    // ...

    /// Tests if data are normally loaded into the cells of the table
    func testCellData() throws {
        testVC.exTable.reloadData()    // Cells are created.
    }

}
```

---

# UI Test

* Tested if there exists the table view with accessibility identifier.

```
let table = app.tables["exTable"]
XCTAssertTrue(table.exists)
```

* Tested if the table has 5 cells. The menu item list has 5 elements.

```
let cells = table.cells
XCTAssertEqual(5, cells.count)
```

* Tested if each cell has image and lable views using accessibility identifiers.

```
for i in 0 ... 4 {
    let cell = cells.element(boundBy: i)
    XCTAssertTrue(cell.images["imageView\(i)"].exists)
    XCTAssertTrue(cell.staticTexts["textView\(i)"].exists)
}
```

---

# References

* [Tutorial: Adding a UITableView programmatically (Martin Lasek)](https://medium.com/@martinlasek/tutorial-adding-a-uitableview-programmatically-433cb17ae07d)
* [Ways to Load UIViewController in a Unit Test](https://www.appsdeveloperblog.com/ways-to-load-uiviewcontroller-in-a-unit-test/)
* [XCTestCase - iOS UI Tests - dealing with UITableViews with many cells (from Stack Overflow)
](https://stackoverflow.com/questions/33529380/xctestcase-ios-ui-tests-dealing-with-uitableviews-with-many-cells)

* [UITableView class](https://developer.apple.com/documentation/uikit/uitableview)
* [UITableViewDataSource](https://developer.apple.com/documentation/uikit/uitableviewdatasource)
* [UITableViewDelegate](https://developer.apple.com/documentation/uikit/uitableviewdelegate)
