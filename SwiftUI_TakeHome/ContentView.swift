//
//  ContentView.swift
//  SwiftUI_TakeHome
//
//  Created by Warren Hansen on 5/16/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Page 1")
                Spacer()
                        .frame(height: 120)
                NavigationLink(destination: SecondView()) {
                    ButtonView(message: "Go To Page 2")
                }
                Spacer()
            }
            .toolbar {
                Button("Logout") {
                    isPresented.toggle()
                }
                .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State private var isPresented = false
    static var previews: some View {
        ContentView()
    }
}
