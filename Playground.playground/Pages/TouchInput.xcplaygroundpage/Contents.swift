import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/handling-touches

struct ButtonBasics: View {
    
    @State var text: String = ""
    @State var showAlert: Bool = false
    
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
        .presentation($showAlert) { () -> Alert in
            Alert(title: Text("You tapped the button!"),
                  message: nil,
                  dismissButton: Alert.Button.default(Text("Ok")))
        }
    }
    
    func onPressButton() {
        self.showAlert = true
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: ButtonBasics())
