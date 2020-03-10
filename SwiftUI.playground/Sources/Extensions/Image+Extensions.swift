import Foundation
import SwiftUI
import UIKit

extension Image {
  public init(name: String) {
    self.init(uiImage: UIImage(named: name)!)
  }
}
