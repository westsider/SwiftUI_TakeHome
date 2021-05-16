//
//  PageOneView.swift
//  SwiftUI_TakeHome
//
//  Created by Warren Hansen on 5/16/21.
//

import SwiftUI

//MARK: - TODO - get buttons from presenter. need to reserch how to use NavLink from there

struct PageOneView: View {
    @State private var isPresented = false
    @State var isActive : Bool = false
    @ObservedObject var presenter: PageOnePresenter
    
    var body: some View {
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

struct PageOneView_Previews: PreviewProvider {
    @State private var isPresented = false
    
    static var previews: some View {
        let interactor = PageOneInteractor()
        let presenter = PageOnePresenter(interactor: interactor)
        return NavigationView { PageOneView(presenter: presenter)}
    }
}
