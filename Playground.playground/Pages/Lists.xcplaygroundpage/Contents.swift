import UIKit
import SwiftUI
import PlaygroundSupport

// https://facebook.github.io/react-native/docs/using-a-listview

let cellInsets = EdgeInsets(top: 10,
                            leading: 10,
                            bottom: 10,
                            trailing: 10)
let listInsets = EdgeInsets(top: 22,
                            leading: 0,
                            bottom: 0,
                            trailing: 0)

// Attempting to use a [String] as the state variable caused issues with the List component.
// Utilizing a list of structs with names as member vars seemed consistent with examples on Apple docs.
struct Person {
    var name: String
}

struct FlatListBasics: View {
    
    @State var names: [Person] = [
        Person(name: "Devin"),
        Person(name: "Jackson"),
        Person(name: "James"),
        Person(name: "Joel"),
        Person(name: "John"),
        Person(name: "Jillian"),
        Person(name: "Jimmy"),
        Person(name: "Julie"),
    ]
    
    var body: some View {
        List(self.names.identified(by: \.name))
        { person in
            Text(verbatim: person.name)
                .frame(height: 44)
                .padding(cellInsets)
                .font(Font.system(size: 18))
        }.padding(listInsets)
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: FlatListBasics())
