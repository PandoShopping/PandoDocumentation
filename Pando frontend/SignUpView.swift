//
//  SignUpView.swift
//  Pando
//
//  Created by Asritha Bodepudi on 1/4/23.
//

import SwiftUI

struct SignUpView: View {
    
    let showLogin: () -> Void
    
    @State private var username: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State var shouldShowConfirmSign: Bool = false
    
    let heightSpacingFactor: CGFloat = 1.5
    let widthSpacingFactor: CGFloat = 2
    let iconColor = Color(red: 196/255, green: 196/255, blue: 198/255)
    
    var body: some View {
        VStack {
            
            GeometryReader { geometry in
                Text("Welcome to" + "\n" + "Pando!")
                    .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.12))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.825, height: 130, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/0.9 )
                
            }
            
            GeometryReader { geometry in
                
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(iconColor)
                        .padding(.leading, 30)
                    TextField("Your name", text: $username)
                        .font(.custom("Poppins-Medium", size: geometry.size.width * 0.04))
                        .foregroundColor(.black)
                        .padding(.horizontal, 10)
                    
                }.frame(width: geometry.size.width * 0.8, height: 47, alignment: .center)
                    .fixedSize()
                    .background(.white)
                    .cornerRadius(15)
                    .position(x: geometry.size.width/widthSpacingFactor, y: geometry.size.height/0.7)
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
            
            
            // SecureField("Enter your password", text: $password)
            
            
            GeometryReader { geometry in
                Button(action: {
                    
                    // button action here
                }) {
                    Text("Continue")
                        .font(.custom("Poppins-Medium", size: geometry.size.width * 0.048))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: geometry.size.width * 0.8, height: 45, alignment: .center)
                        .fixedSize()
                        .background(Color(red: 21/255, green: 111/255, blue: 215/255))
                        .cornerRadius(15)
                    
                }   .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/0.9)
                
            }
            
            
            // This is for the "or sign up with" two horizontal lines aesthetic thing in the middle:
            GeometryReader { geometry in
                HStack {
                    let lineColor = Color(red: 150/255, green: 164/255, blue: 181/255)
                    let eitherSidePadding = 0
                    let lineWidth = 80 //like the length, not the weight of the line
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(lineColor)
                        .frame(width: CGFloat(lineWidth))
                        .padding(.horizontal, CGFloat(eitherSidePadding))
                    Text("or sign up with")
                        .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.04))
                        .fixedSize()
                        .padding(.horizontal, 10)
                        .foregroundColor(lineColor)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(lineColor)
                        .frame(width: CGFloat(lineWidth))
                        .padding(.horizontal, CGFloat(eitherSidePadding))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .position(x: geometry.size.width / widthSpacingFactor, y:geometry.size.height/1.15)
            }
            
            //sign up with google button
            
            GeometryReader { geometry in
                Button(action: {
                    // Button action here
                })  {
                    HStack {
                        Image("Google-logo")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("Sign up with Google")
                            .foregroundColor(.black)
                            .padding(.horizontal, 15)
                    }
                    .frame(width: geometry.size.width * 0.8, height: 47, alignment: .center)
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
                        
                        Text("Sign up with Apple")
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                        
                    }
                    .frame(width: geometry.size.width * 0.8, height: 47, alignment: .center)
                    .background(Color(red: 198/255, green: 218/255, blue: 242/255))
                    .cornerRadius(15)
                    .position(x: geometry.size.width/widthSpacingFactor, y: geometry.size.height/2.4)
                }
                
            }
            
            
            GeometryReader { geometry  in
                
                Text("By signing up, you’re agreeing to our Terms & Conditions and Privacy Policy")
                    .font(.custom("HelveticaNeue", size: geometry.size.width * 0.0325))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.6, height: 47, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/2)
            }
            
        }
        
        .background(Color(red: 220/255, green: 236/255, blue: 255/255))
        
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(showLogin: { })
            .previewInterfaceOrientation(.portrait)
    }
}
