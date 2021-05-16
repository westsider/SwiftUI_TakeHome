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
            PageOneView(presenter:
                PageOnePresenter(interactor:
                    PageOneInteractor()))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State private var isPresented = false
    static var previews: some View {
        ContentView()
    }
}
