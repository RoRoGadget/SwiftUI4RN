import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/handling-text-input

struct PizzaTranslator: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Spacer()
			TextField("Type here to translate!", text: $text)
				.frame(height: 40.0)
            Spacer()
            Text(self.text.split(separator: " ").map { (word) in return "🍕" }.joined(separator: " ") )
                .padding(10)
				.font(Font.system(size: 42.0))
            Spacer()
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: PizzaTranslator())
