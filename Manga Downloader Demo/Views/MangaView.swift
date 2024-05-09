//
//  MangaView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 19/2/22.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct MangaView: View {
    
    var manganame: String
    var mangaauthor: String
    var mangacover: String
    var mangainfo: String
    var mangarating: String
    var mangastatus: String
    var mangatag1: String
    var mangatag2: String
    var mangatag3: String
    var mangatag4: String
    var mangatag5: String
    
    @EnvironmentObject var hideBar : HideNavBar

    private let posterwidth: CGFloat = 264.8
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                ZStack{
                    HStack{
                        Spacer()
                        Image("MangaBlob")
                            .padding(.bottom, 115)
                            .onAppear(){
                                hideBar.HideBar = true
                             }
                            .onDisappear(){
                                hideBar.HideBar = false
                            }
                    }
                    HStack{
                        Spacer()
                        ZStack{
                            AsyncImage(url: URL(string:self.mangacover)) { image in image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder:{
                                ProgressView()
                            }
                            .frame(width: posterwidth/2, height: 190.3)
                            .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                            .offset(x:-posterwidth/2)
                            .rotationEffect(.degrees(10))
                            .padding(.trailing, -20)
                            .padding(.top, -170)
                            .opacity(0)
                            
                            AsyncImage(url: URL(string:self.mangacover)) { image in image
                                    .resizable()
                            } placeholder:{
                                ProgressView()
                            }
                            .cornerRadius(20, corners: [.topRight, .bottomRight])
                            .frame(width: posterwidth/2, height: 190.3)
                            .rotationEffect(.degrees(10))
                            .padding(.trailing, -20)
                            .padding(.top, -170)
                            .opacity(0)
                            
                            AsyncImage(url: URL(string:self.mangacover)){ image in image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder:{
                                ProgressView()
                            }
                            .frame(width: 264.8, height: 190.3)
                            .cornerRadius(20)
                            .rotationEffect(.degrees(10))
                            .padding(.trailing, -20)
                            .padding(.top, -190)
                        }
                    }
                    VStack(){
                        HStack{
                            NavigationLink(destination: ExploreView(showMenu: .constant(false)).navigationBarHidden(true))
                            {
                                Image("Moveback")
                                    .padding(.bottom, 30)
                                    .padding(.top, 20)
                                
                                Spacer()
                            }
                        }
                        HStack(){
                            AsyncImage(url: URL(string:self.mangacover)) { image in image
                                    .resizable()
                            } placeholder:{
                                ProgressView()
                            }
                            .cornerRadius(9)
                            .frame(width: 54.9, height: 82.4)
                            .padding(.trailing, 6)
                            VStack(alignment:.leading){
                                Text(self.manganame)
                                    .font(.custom("Lora Medium", size: 23))
                                    .multilineTextAlignment(.leading)
                                    .minimumScaleFactor(0.1)
                                    .lineLimit(2)
                                    .lineSpacing(2.2)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding(.bottom, -4)
                                Text(self.mangaauthor).font(.custom("Lato Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                Spacer()
                                    .frame(minHeight: 0)
                                Spacer()
                            }.frame(height:78)
                            Spacer()
                        }.padding(.vertical, 10)
                        HStack(alignment:.bottom){
                            Text(self.mangarating).font(.custom("Lora-Medium", size: 50))
                            Image("ONGOING")
                                .padding(.bottom, 13)
                            Spacer()
                        }.padding(.top, 266)
                        HStack{
                            Image("StarColored")
                            Image("StarColored")
                            Image("StarColored")
                            Image("StarColored")
                            Image("Star")
                            Spacer()
                        }.padding(.top, -20)
                        HStack(spacing:26) {
                            Text(self.mangatag1).font(.custom("Lato-Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).lineLimit(1)
                            Text(self.mangatag2).font(.custom("Lato-Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).lineLimit(1)
                            Text(self.mangatag3).font(.custom("Lato-Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).lineLimit(1)
                            Text(self.mangatag4).font(.custom("Lato-Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).lineLimit(1)
                            Text(self.mangatag5).font(.custom("Lato-Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).lineLimit(1)
                        }
                        .padding(.top, 6)
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9607843160629272, green: 0.9607843160629272, blue: 0.9607843160629272, alpha: 1)))
                            .frame(width: nil, height: 1)
                            .padding(.top, 12)
                        ScrollView(.vertical){
                            Text(self.mangainfo)
                                .font(.custom("Lato Regular", size: 14))
                                .padding(.top, 12)
                                .lineSpacing(12)
                        }.frame(maxHeight:140)
                        HStack(spacing:37){
                            ZStack{
                                Text("Chapter 161").font(.custom("Lato-Light", size:15)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                                Image("ChapterBack")
                            }
                            ZStack{
                                Text("Chapter 160").font(.custom("Lato-Light", size:15)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                                Image("ChapterBack")
                            }
                        }.padding(.top, 12)
                        Spacer()
                    }.padding(.horizontal, 30)
                }
                .ignoresSafeArea(.all, edges: .bottom)
                .frame(maxHeight:.infinity)
                .navigationBarHidden(true)
            }
            
        }
    }
}

struct MangaView_Previews: PreviewProvider {
    static var previews: some View {
        MangaView(manganame:"One-Punch Man", mangaauthor: "ONE", mangacover: "https://i.ibb.co/B6W4NG7/cover-1.jpg", mangainfo: "Follows the life of an average hero who manages to win all battles with only one punch. This ability seems to frustrate him as he no longer feels the thrill and adrenaline of fighting a tough battle, which leads to him questioning his past desire of being strong. After all what’s so good about having an overwhelming power?", mangarating: "4.9" , mangastatus: "Ongoing", mangatag1: "Seinen", mangatag2:"Supernatural" ,mangatag3: "Fantasy",mangatag4:"Comedy" ,mangatag5: "Action")
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())

            
    }
}
