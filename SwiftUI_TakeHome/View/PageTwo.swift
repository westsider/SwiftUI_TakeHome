//
//  PageTwo.swift
//  SwiftUI_TakeHome
//
//  Created by Warren Hansen on 5/16/21.
//

import SwiftUI

struct SecondView: View {
    @State private var isPresented = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                Text("Page 2")
                Spacer()
            }
        }
        .toolbar {
            Button("Logout") {
                isPresented.toggle()
                /* this is a workaround to unwind segue
                first we dismiss this view
                then we launch the modal
                which will dismiss to the main view */
                presentationMode.wrappedValue.dismiss()
            }
            .background(Color.blue)
            .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}