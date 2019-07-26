//
//  ContentView.swift
//  NavControllerTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var showNewNav = false
    
    var body: some View {
        VStack {
            ZStack {
                Text("Testing Navigation")
                Button(action: {
                    self.showNewNav.toggle()
                }) {
                    Text("Show New VC")
                }.padding(.top, 100)
                
                if showNewNav {
                    NavWrapper(controller: TestViewController())
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
