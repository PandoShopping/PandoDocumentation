//
//  LoginView.swift
//  Pando
//
//  Created by Asritha Bodepudi on 1/4/23.
//

import SwiftUI

struct LoginView: View {
    //is this private necessary, in here + the other views
    @State private var phoneNumber: String = ""
    @State var shouldShowSignUp: Bool = false
    var body: some View {
        
        VStack {
            Text("Login")
            TextField("Phone number", text: $phoneNumber)
            Button {
                //action
            } label: {
                Text("Continue")
            }
            Button {
                //action
            } label: {
                Text("Login with Google")
            }
            Button {
                //action
            } label: {
                Text("Login with Apple")
            }
            Button {
                shouldShowSignUp = true
            } label: {
                Text("Don't have an account? Sign Up")
            }
            
        }
        }
        
        
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
