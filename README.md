# StackWrapper
StackWrapper helps you easily and efficiently arrange your desired elements using a flexible layout. This component dynamically adjusts in height and width based on the elements and the device’s screen size. It also allows you to use various properties to customize your design needs.

![Static Badge](https://img.shields.io/badge/Swit-6.0-orange) ![Static Badge](https://img.shields.io/badge/iOS-16.0%2B-white) ![Static Badge](https://img.shields.io/badge/Version%20-%201.1.0-skyblue) ![Static Badge](https://img.shields.io/badge/LICENSE-MIT-yellow) ![Static Badge](https://img.shields.io/badge/SPM-SUCCESS-green)



## Features 🚀
- Flexible Horizontal Wrapping
- Customizable Spacing
- Alignment Control
- Fixed Size Option
- Animation Support
- Layout Calculation
- Responsive to Screen Size

---------

## Configuration ⚙️
| Parameter |  Type     | Default Value                       |
| :-------- | :------- | :-------------------------------- |
| hSpacing      | `CGFloat` | 10 |
| vSpacing      | `CGFloat` | 10 |
| alignment      | `HorizontalAlignment` | .leading |
| fixedSize     | `Bool` | true |
| animation     | `Animation?` | nil |

---------

## Usage Guide 📖

First, import StackWrapper package

```swift
import StackWrapper

```
### Default Use:

```swift
struct MySkills: View {
  
  @State var skills: [String] = ["Swift", "SwiftUI", "UIKit", "Kotlin", "JavaScript", "HTML", "CSS", "React", "Node.js", "Git", "TypeScript", "MongoDB", "Express.js", "REST APIs"]
  
  var body: some View {
    VStack {
      Hwrapper(items: skills) {skill in
        Text(skill)
          .padding(12)
          .background(.yellow)
          .clipShape(RoundedRectangle(cornerRadius: 12))
      }
    }
    .padding()
  }
}
```
<img width="228" alt="Image" src="https://github.com/user-attachments/assets/61363b09-f303-44c6-9161-2d3513b35e3d" />

### With custom parameters

```swift
Hwrapper(items: skills, vSpacing: 10, hSpacing: 20, alignment: .center, fixedSize: true) { skill in
  Text(skill)
    .padding(12)
    .background(.yellow)
    .clipShape(RoundedRectangle(cornerRadius: 12))
}
```
<img width="228" alt="Image" src="https://github.com/user-attachments/assets/d695e335-bdc8-4931-ac63-8906e905e85f" />

### Animation Support
Smooth transitions when the container’s height increases or decreases

```swift
VStack {
   Hwrapper(items: skills, animation: .easeIn) { skill in
    Text(skill)
    .padding(12)
    .background(.yellow)
    .clipShape(RoundedRectangle(cornerRadius: 12))
  }
      
  Button("Delete Skill") {
    skills.removeLast()
  }
   .buttonStyle(.borderedProminent)
}
```

![Image](https://github.com/user-attachments/assets/c1a638d2-04fa-462f-8658-855f4151a7b1)
----
## Installation via Swift Package Manager 🖥️
- Open your project.
- Go to File → Add Package Dependencies.
- Enter URL: https://github.com/Desp0o/StackWrapper.git
- Click Add Package.

## Contact 📬

- Email: tornike.despotashvili@gmail.com
- LinkedIn: https://www.linkedin.com/in/tornike-despotashvili-250150219/
- github: https://github.com/Desp0o


