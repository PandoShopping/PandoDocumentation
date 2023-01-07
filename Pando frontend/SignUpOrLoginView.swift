//
//  SignUpOrLoginView.swift
//  Pando
//
//  Created by Asritha Bodepudi on 1/4/23.
//

import SwiftUI

struct SignUpOrLoginView: View {
    
    var body: some View {
        
        
    //    let heightSpacingFactor: CGFloat = 1.5
        let widthSpacingFactor: CGFloat = 2
       // let iconColor = Color(red: 196/255, green: 196/255, blue: 198/255)
        
        
        VStack {
            GeometryReader { geometry in
                Text("Pando")
                    .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.15))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.825, height: 130, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/1.2 )
                
            }
            
            GeometryReader { geometry in
                Text("Buy and sell locally.")
                    .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.05))
                    .foregroundColor(Color(red: 73/255, green: 79/255, blue: 87/255))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.825, height: 50, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/7 )
                
                
            }
            
            GeometryReader { geometry in
                Image("Juicy-shopping-cart")
                    .resizable()
                    .frame(width: geometry.size.width * 0.55, height: geometry.size.height * 1.65, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/1.9 )
            }
            
            
          
            Button {
                //action
            } label: {
                
                GeometryReader { geometry in
                    Button(action: {
                        
                        // button action here
                    }) {
                        Text("Sign up")
                            .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.048))
                            .foregroundColor(Color(red: 220/255, green: 236/255, blue: 255/255))
                            .padding()
                            .frame(width: geometry.size.width * 0.9, height: 45, alignment: .center)
                            .fixedSize()
                            .background(.black)
                            .cornerRadius(15)
                        
                    }   .position(x: geometry.size.width / 2, y: geometry.size.height/0.78)
                    
                }
                
            }
            
            
            Button {
                //action
            } label: {
                
                GeometryReader { geometry in
                    Button(action: {
                        
                        // button action here
                    }) {
                        Text("Login")
                            .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.048))
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: geometry.size.width * 0.9, height: 45, alignment: .center)
                            .fixedSize()
                            .background(Color(red: 220/255, green: 236/255, blue: 255/255))
                            .cornerRadius(15)
                        
                    }   .position(x: geometry.size.width / 2, y: geometry.size.height/1.6)
                    
                }
                
            }
            
           

        }
        
        .background(Color(red: 220/255, green: 236/255, blue: 255/255))
    }
}

struct SignUpOrLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpOrLoginView()
    }
}
