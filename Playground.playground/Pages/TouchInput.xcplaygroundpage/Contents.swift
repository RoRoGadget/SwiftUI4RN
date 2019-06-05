import UIKit
import SwiftUI
import PlaygroundSupport

struct ButtonBasics: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button(action: {
                self.onPressButton()
            }) {
                Text("Press Me")
            }
            
            Button(action: {
                self.onPressButton()
            }) {
                Text("Press Me")
            }.accentColor(Color(red: 132 / 255.0, green: 21 / 255.0, blue: 132 / 255.0))
            
            HStack {
            
                Button(action: {
                    self.onPressButton()
                }) {
                    Text("This looks great!")
                }
                
                Button(action: {
                    self.onPressButton()
                }) {
                    Text("Ok!")
                    }.accentColor(Color(red: 132 / 255.0, green: 21 / 255.0, blue: 132 / 255.0))
            }.padding(20.0)
        }.padding(20.0)
        
    }
    
    func onPressButton() {
        // Tutorials on alerts don't seem to be present.
        NSLog("You tapped the button!")
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ButtonBasics())