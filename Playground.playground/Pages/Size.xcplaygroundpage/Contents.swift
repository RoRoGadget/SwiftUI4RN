import UIKit
import SwiftUI
import PlaygroundSupport

struct FixedDimensionsBasics: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Rectangle().frame(width: 50, height: 50)
                .foregroundColor(Color.init(red: 176 / 255, green: 224 / 255, blue: 230 / 255))
            
            Rectangle().frame(width: 100, height: 100)
                .foregroundColor(Color.init(red: 135 / 255, green: 206 / 255, blue: 235 / 255))
            
            Rectangle().frame(width: 150, height: 150)
                .foregroundColor(Color.init(red: 70 / 255, green: 130 / 255, blue: 180 / 255))
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: FixedDimensionsBasics())
