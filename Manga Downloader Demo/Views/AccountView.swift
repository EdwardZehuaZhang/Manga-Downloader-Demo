//
//  AccountView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 2/4/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("Mountain").opacity(1)
                    .padding(.top, 120)
                VStack{
                VStack{
                    Image("Hat")
                        .padding(.bottom, 60)
                    VStack{
                        HStack{
                            Text("Username").font(.custom("Lato Medium", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                            Spacer()
                        }
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.5974092483520508, green: 0.5974092483520508, blue: 0.6474750638008118, alpha: 1)))
                        .frame(width: 308.6, height: 1.4)
                        .rotationEffect(.degrees(180))
                        .padding(.bottom, 35)
                        
                        HStack{
                            Text("Password").font(.custom("Lato Medium", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                            Spacer()
                        }
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.5974092483520508, green: 0.5974092483520508, blue: 0.6474750638008118, alpha: 1)))
                        .frame(width: 308.6, height: 1.4)
                    }.padding(.bottom, 60)
                    VStack(spacing: 20){
                        HStack{
                            Text("OR").font(.custom("Lato Bold", size: 15)).multilineTextAlignment(.center)
                            Spacer()
                        }
                        HStack{
                            NavigationLink(destination: SignupView()){
                                Image("SIGN UP")
                            }
                                .offset(x:-3)
                            Spacer()
                        }
                    }
                }.frame(width: 308.6, height: 119.9)
                        .padding(.bottom, 400)
                }
        }
    }.navigationBarHidden(true)
}
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .previewDevice("iPhone 12")
    }
}
