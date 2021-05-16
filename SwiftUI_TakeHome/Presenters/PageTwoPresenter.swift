//
//  PageTwoPresenter.swift
//  SwiftUI_TakeHome
//
//  Created by Warren Hansen on 5/16/21.
//

import SwiftUI
import Combine

class PageTwoPresenter: ObservableObject {

    private let router = PageTwoRouter()
    
    private let interactor: PageTwoInteractor
    
    @Published var logginState: Bool = true
    
    init(interactor: PageTwoInteractor) {
        self.interactor = interactor
    }
    func makeAddLogoutButton() -> some View {
        Button(action: {
            print("Login Tapped")
            self.logginState.toggle()
        }) {
            if logginState {
            Text("Logout")
            } else {
                Text("Login")
            }
        }
        .padding(.top, 4)
        .padding(.bottom, 4)
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(8, antialiased: true)
        
    }
    func linkbuilder() {

    }
}
