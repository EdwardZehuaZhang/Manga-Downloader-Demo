//
//  MenuView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 15/3/22.
//

import SwiftUI

struct MenuContent: View {
    var body: some View {
        HStack{
            ZStack{
                HStack{
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 319.9, height: 844)
                }
                VStack{
                    Spacer()
                    Image("Gradient Wave")
                }
                VStack{
                    HStack{
                        Image("Profile Photo").offset(x:2)
                        VStack(alignment: .leading){
                            Text("Hello").font(.custom("Lato Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))) + Text(" 👋 ").font(.custom("Metropolis Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Text("tianshan.z").font(.custom("Lato Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.51, green: 0.51, blue: 0.58, alpha: 1)))
                        }.offset(x:3)
                        Spacer()
                        Image("Scan").offset(x:-2)
                    }
                    Image("Premium").frame(height:170).offset(x:2, y:-3)
                    VStack(alignment: .leading, spacing: 35){
                        HStack(spacing: 17){
                            Image("Files")
                            Text("LIBRARY").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()
                            Image("RightArrow").padding(.trailing, 9)
                        }.padding(.horizontal, 5)
                        HStack(spacing: 17){
                            Image("Shop")
                            Text("SHOP").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()
                            Image("RightArrow").padding(.trailing, 9)
                        }.padding(.horizontal, 5)
                        HStack(spacing: 17){
                            Image("Chat")
                            Text("CHAT").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()
                            Image("RightArrow").padding(.trailing, 9)
                        }.padding(.horizontal, 5)
                        HStack(spacing: 17){
                            Image("Links")
                            Text("LINK").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()
                            Image("RightArrow").padding(.trailing, 9)
                        }.padding(.horizontal, 5)
                        HStack(spacing: 17){
                            Image("Customize")
                            Text("CUSTOMIZE").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()
                            Image("RightArrow").padding(.trailing, 9)
                        }.padding(.horizontal, 5)
                        HStack(spacing: 17){
                            Image("Moon")
                            Text("DARK MODE").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()
                            Image("Light Mode").padding(.trailing, 9)
                            
                        }.offset(y:-10).padding(.horizontal, 5)
                    }.padding(.leading, 4)
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color(#colorLiteral(red: 0.5974092483520508, green: 0.5974092483520508, blue: 0.6474750638008118, alpha: 0.5)))
                    .frame(width: 274, height: 4)
                    .opacity(0.2)
                    VStack(alignment: .leading, spacing: 35){
                        HStack(spacing: 17){
                            Image("Settings")
                            Text("SETTINGS").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()

                        }.padding(.horizontal, 5)
                        HStack(spacing: 17){
                            Image("Information")
                            Text("INFORMATION").font(.custom("Lato Regular", size: 17)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                            Spacer()

                        }.padding(.horizontal, 5)
                    }.padding(.top, 25).padding(.leading, 4)
                }.frame(width: 268).padding(.bottom, 17)
            }.ignoresSafeArea().navigationBarHidden(true)
            Spacer()
        }
    }
}

struct MenuContent_Previews: PreviewProvider {
    static var previews: some View {
        MenuContent()
            .previewDevice("iPhone 12")
    }
}
