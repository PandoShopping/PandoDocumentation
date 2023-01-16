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
    
    
    let heightSpacingFactor: CGFloat = 1.5
    let widthSpacingFactor: CGFloat = 2
    let iconColor = Color(red: 196/255, green: 196/255, blue: 198/255)
    
    var body: some View {
        
        VStack {
            GeometryReader { geometry in
                Text("Login")
                    
                    .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.15))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.825, height: 130, alignment: .center)
                    .position(x: geometry.size.width/3, y: geometry.size.height/0.7)
                
            }
            
            
            GeometryReader { geometry in
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(iconColor)
                        .padding(.leading, 30)
                    TextField("Your phone number", text: $phoneNumber)
                        .font(.custom("Poppins-Medium", size: geometry.size.width * 0.04))
                        .foregroundColor(.black)
                        .padding(.horizontal, 7)
                    
                }.frame(width: geometry.size.width * 0.8, height: 47, alignment: .center)
                    .fixedSize()
                    .background(.white)
                    .cornerRadius(15)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/0.87)
            }
            
           
            
            
            GeometryReader { geometry in
                Button(action: {
                    
                    // button action here
                }) {
                    Text("Continue")
                        .font(.custom("Poppins-Medium", size: geometry.size.width * 0.048))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: geometry.size.width * 0.8, height: 37, alignment: .center)
                        .fixedSize()
                        .background(Color(red: 21/255, green: 111/255, blue: 215/255))
                        .cornerRadius(15)
                    
                }   .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/0.9)
                
            }
            
            
            GeometryReader { geometry in
                Button(action: {
                    // Button action here
                }) {
                    HStack {
                        Image("Google-logo")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("Login with Google")
                            .foregroundColor(.black)
                            .padding(.horizontal, 15)
                    }
                    .frame(width: geometry.size.width * 0.8, height: 50, alignment: .center)
                    .background(Color(red: 198/255, green: 218/255, blue: 242/255))
                    .cornerRadius(15)
                    .position(x: geometry.size.width/widthSpacingFactor, y: geometry.size.height/1.5)
                }
                
            }
            
            //sign up with apple button
            
            GeometryReader { geometry in
                Button(action: {
                    // Button action here
                })  {
                    
                    HStack {
                        Image("Apple-logo")
                            .resizable()
                            .frame(width: 18, height: 22)
                        
                        Text("Login with Apple")
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                        
                    }
                    .frame(width: geometry.size.width * 0.8, height: 50, alignment: .center)
                    .background(Color(red: 198/255, green: 218/255, blue: 242/255))
                    .cornerRadius(15)
                    .position(x: geometry.size.width/widthSpacingFactor, y: geometry.size.height/2.4)
                }
                
            }
            
            Button {
                shouldShowSignUp = true
            } label: {
                GeometryReader { geometry  in
            Text("Don't have an account?")
                        .font(.custom("HelveticaNeue", size: geometry.size.width * 0.0325))
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.6, height: 47, alignment: .center)
                        .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/2.75)
                        .foregroundColor(.black)
              Text("Sign Up")
                        .font(.custom("HelveticaNeue", size: geometry.size.width * 0.0325))
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.6, height: 47, alignment: .center)
                        .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/2)
                }
                
            }
            
        } .background(Color(red: 220/255, green: 236/255, blue: 255/255))
        
        
        
    }
    
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
