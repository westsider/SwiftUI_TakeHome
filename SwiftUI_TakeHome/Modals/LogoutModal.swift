//
//  LogoutModal.swift
//  SwiftUI_TakeHome
//
//  Created by Warren Hansen on 5/16/21.
//

import SwiftUI

// This is the UI Implementation for Login

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Spacer()
                .frame(height: 60)
        Text("Login Screen")
        Spacer()
                .frame(height: 120)
        Button("Login") {
            presentationMode.wrappedValue.dismiss()
        }
        .navigationTitle("ContentView")
        .padding(.top, 4)
        .padding(.bottom, 4)
        .padding(.leading, 16)
        .padding(.trailing, 16)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(8, antialiased: true)
        Spacer()
    }
}
