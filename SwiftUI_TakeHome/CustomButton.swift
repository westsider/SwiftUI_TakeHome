//
//  CustomButton.swift
//  SwiftUI_TakeHome
//
//  Created by Warren Hansen on 5/16/21.
//

import SwiftUI

struct ButtonView: View {
    var message:String = "None"
    var body: some View {
        Text(message)
            .padding(.top, 4)
            .padding(.bottom, 4)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8, antialiased: true)
    }
}
