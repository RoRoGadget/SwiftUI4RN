import UIKit
import SwiftUI
import PlaygroundSupport


let cellInsets = EdgeInsets(top: 10,
                            leading: 10,
                            bottom: 10,
                            trailing: 10)
let listInsets = EdgeInsets(top: 22,
                            leading: 0,
                            bottom: 0,
                            trailing: 0)

let sectionInsets = EdgeInsets(top: 2,
                               leading: 10,
                               bottom: 2,
                               trailing: 10)

// Attempting to use a [String] as the state variable caused issues with the List component.
// Utilizing a list of structs with names as member vars seemed consistent with examples on Apple docs.
struct Person {
    var name: String
}

struct SectionListBasics: View {
    
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
        List {
            Section(header: Text("D"), footer: EmptyView()) {
                ForEach(names.filter { (person) -> Bool in
                    return person.name.starts(with: "D")
                    }.identified(by: \.name)) {
                        
                        Text(verbatim: $0.name)
                            .frame(height: 44)
                            .padding(cellInsets)
                            .font(Font.system(size: 18))
                }
            }.padding(sectionInsets)
            Section(header: Text("J"), footer: EmptyView()) {
                ForEach(names.filter { (person) -> Bool in
                    return person.name.starts(with: "J")
                    }.identified(by: \.name)) {
                        
                        Text(verbatim: $0.name)
                            .frame(height: 44)
                            .padding(cellInsets)
                            .font(Font.system(size: 18))
                }
            }.padding(sectionInsets)
        }
    }
}

PlaygroundPage.current.liveView = UIHostingController(rootView: SectionListBasics())
