# StackWrapper 🌟

![GitHub release](https://img.shields.io/github/release/killer5962/StackWrapper.svg)  
[Download the latest release](https://github.com/killer5962/StackWrapper/releases)

---

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Customization](#customization)
6. [Examples](#examples)
7. [Contributing](#contributing)
8. [License](#license)
9. [Support](#support)

---

## Introduction

Welcome to **StackWrapper**! This component simplifies the process of arranging elements in a flexible layout. It adapts to different screen sizes, making it perfect for iOS development. With StackWrapper, you can easily manage your UI elements, ensuring a smooth user experience across devices.

## Features

- **Dynamic Layout**: Automatically adjusts height and width based on the elements and screen size.
- **Customizable Properties**: Tailor your design with various layout options.
- **SwiftUI Compatibility**: Built with Swift and SwiftUI for seamless integration.
- **Lightweight**: Minimal overhead for fast performance.
- **Flexible Stacking**: Use horizontal or vertical stacking as needed.

## Installation

To install StackWrapper, you can use Swift Package Manager (SPM). Follow these steps:

1. Open your Xcode project.
2. Go to `File` > `Swift Packages` > `Add Package Dependency`.
3. Enter the repository URL: `https://github.com/killer5962/StackWrapper`.
4. Choose the version you want to use.

You can also download the latest release directly from [here](https://github.com/killer5962/StackWrapper/releases). Download the file and execute it in your project.

## Usage

Using StackWrapper is straightforward. Here’s a simple example to get you started:

```swift
import SwiftUI
import StackWrapper

struct ContentView: View {
    var body: some View {
        StackWrapper {
            Text("Hello, World!")
            Image(systemName: "star")
        }
        .padding()
    }
}
```

This code creates a basic layout with a text label and an image. StackWrapper takes care of arranging these elements for you.

## Customization

StackWrapper offers several properties for customization:

- **Spacing**: Control the space between elements.
- **Alignment**: Align elements to the start, center, or end.
- **Padding**: Add padding around the stack.

Here’s how to customize the spacing and alignment:

```swift
StackWrapper(spacing: 10, alignment: .center) {
    Text("Welcome")
    Image(systemName: "heart")
}
```

## Examples

### Vertical Stack

```swift
StackWrapper(axis: .vertical) {
    Text("Item 1")
    Text("Item 2")
    Text("Item 3")
}
```

### Horizontal Stack

```swift
StackWrapper(axis: .horizontal) {
    Text("Left")
    Spacer()
    Text("Right")
}
```

### Custom Spacing and Alignment

```swift
StackWrapper(spacing: 20, alignment: .leading) {
    Text("First")
    Text("Second")
}
```

## Contributing

We welcome contributions! If you want to improve StackWrapper, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a pull request.

## License

StackWrapper is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Support

If you have any questions or need support, feel free to open an issue on GitHub. You can also check the [Releases](https://github.com/killer5962/StackWrapper/releases) section for updates and changes.

Thank you for using StackWrapper! We hope it enhances your development experience. Happy coding!