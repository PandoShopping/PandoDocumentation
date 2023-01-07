//
//  ConfirmSignUpView.swift
//  Pando
//
//  Created by Asritha Bodepudi on 1/4/23.
//

import SwiftUI

struct ConfirmSignUpView: View {

    @State private var confirmationCode: String = ""
    @State private var shouldShowLogin: Bool = false

    let username: String

    var body: some View {
        VStack {
            Text("Enter your VerificationCode")
            TextField("Vertification Code", text: $confirmationCode)
            Button {
                //action
            } label: {
                Text("Submit")
            }
        }
      
    }
}

struct ConfirmSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmSignUpView(username: "testUsername")
    }
}
