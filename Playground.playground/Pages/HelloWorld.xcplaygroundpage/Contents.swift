import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/tutorial

struct HelloWorld: View {
    
    var body: some View {
        Text("Hello World!")
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: HelloWorld())
