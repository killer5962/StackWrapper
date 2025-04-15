// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 15.0, *)
@available(macOS 10.15, *)
public struct Hwrapper<T: Hashable, Content: View>: View {
  let items: [T]
  let vSpacing: CGFloat
  let hSpacing: CGFloat
  let alignment: HorizontalAlignment
  let animation: Animation?
  let fixedSize: Bool
  let content: (T) -> Content
  
  public init(
    items: [T],
    vSpacing: CGFloat = 10,
    hSpacing: CGFloat = 10,
    alignment: HorizontalAlignment = .leading,
    fixedSize: Bool = true,
    animation: Animation? = nil,
    @ViewBuilder content: @escaping (
      T
    ) -> Content
  ) {
    self.items = items
    self.hSpacing = hSpacing
    self.vSpacing = vSpacing
    self.alignment = alignment
    self.content = content
    self.fixedSize = fixedSize
    self.animation = animation
  }
  
  @State private var sizes: [T: CGSize] = [:]
  @State private var totalHeight: CGFloat = 0
  
  public var body: some View {
    GeometryReader { geometry in
      VStack(alignment: alignment, spacing: vSpacing) {
        ForEach(rows(in: geometry), id: \.self) { row in
          HStack(spacing: hSpacing) {
            ForEach(row, id: \.self) { item in
              content(item)
                .if(fixedSize) { view in
                  view.fixedSize(horizontal: true, vertical: false)
                }
                .background(
                  GeometryReader { geo in
                    Color.clear.onAppear {
                      sizes[item] = geo.size
                      calculateHeight(in: geometry)
                    }
                  }
                )
            }
          }
        }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(
        GeometryReader { geo in
          Color.clear.onAppear {
            calculateHeight(in: geometry)
          }
        }
      )
    }
    .frame(height: totalHeight)
    .animation(animation, value: totalHeight)
  }
  
  private func rows(in geometry: GeometryProxy) -> [[T]] {
    var rows: [[T]] = [[]]
    var currentRowWidth: CGFloat = 0
    let availableWidth = geometry.size.width
    
    for item in items {
      let itemWidth = sizes[item]?.width ?? 0
      
      if currentRowWidth + itemWidth > availableWidth {
        rows.append([item])
        currentRowWidth = itemWidth
      } else {
        rows[rows.count - 1].append(item)
        currentRowWidth += itemWidth + hSpacing
      }
    }
    
    return rows
  }
  
  private func calculateHeight(in geometry: GeometryProxy) {
    var height: CGFloat = 0
    let rows = rows(in: geometry)
    
    for row in rows {
      let rowHeight = row.compactMap { sizes[$0]?.height }.max() ?? 0
      height += rowHeight + vSpacing
    }
    
    totalHeight = height
  }
}

@available(iOS 15.0, *)
@available(macOS 10.15, *)
public extension View {
  @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
}
