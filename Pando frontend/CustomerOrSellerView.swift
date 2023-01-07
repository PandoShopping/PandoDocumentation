//
//  CustomerOrSellerView.swift
//  Pando
//
//  Created by Asritha Bodepudi on 1/4/23.
//

import SwiftUI

struct CustomerOrSellerView: View {
    var body: some View {
        
        VStack {
            
            //    let heightSpacingFactor: CGFloat = 1.5
                let widthSpacingFactor: CGFloat = 2
               // let iconColor = Color(red: 196/255, green: 196/255, blue: 198/255)
            
            GeometryReader { geometry in
                Text("Which statement describes you?")
                    .font(.custom("HelveticaNeue-Regular", size: geometry.size.width * 0.08))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width * 0.825, height: 130, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/2 )
                
            }
            
            
            GeometryReader { geometry in
                Image("Buyer-welcome")
                    .resizable()
                    .frame(width: geometry.size.width * 0.35, height: geometry.size.height * 0.95, alignment: .center)
                    .position(x: geometry.size.width / widthSpacingFactor, y: geometry.size.height/1.9 )
            }
            
            
            Button {
                //action
            } label: {
                
                GeometryReader { geometry in
                    Button(action: {
                        
                        // button action here
                    }) {
                        Text("I'm a shopper")
                            .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.048))
                            .foregroundColor(Color(red: 220/255, green: 236/255, blue: 255/255))
                            .padding()
                            .frame(width: geometry.size.width * 0.8, height: 45, alignment: .center)
                            .fixedSize()
                            .background(.black)
                            .cornerRadius(15)
                        
                    }   .position(x: geometry.size.width / 2, y: geometry.size.height/2)
                    
                }
                
            }
            
            GeometryReader { geometry in
                Image("Seller-welcome")
                    .resizable()
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 1.05, alignment: .center)
                    .position(x: geometry.size.width / 2.1, y: geometry.size.height/2 )
            }
            
            
            Button {
                //action
            } label: {
                
                GeometryReader { geometry in
                    Button(action: {
                        
                        // button action here
                    }) {
                        Text("I'm a seller")
                            .font(.custom("HelveticaNeue-Medium", size: geometry.size.width * 0.048))
                            .foregroundColor(Color(red: 220/255, green: 236/255, blue: 255/255))
                            .padding()
                            .frame(width: geometry.size.width * 0.8, height: 45, alignment: .center)
                            .fixedSize()
                            .background(.black)
                            .cornerRadius(15)
                        
                    }   .position(x: geometry.size.width / 2, y: geometry.size.height/2)
                    
                }
                
            }
        }
        .background(Color(red: 220/255, green: 236/255, blue: 255/255))
    }
}

struct CustomerOrSellerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerOrSellerView()
    }
}
