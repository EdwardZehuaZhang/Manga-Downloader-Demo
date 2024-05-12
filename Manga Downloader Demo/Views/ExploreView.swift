//
//  ExploreView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 19/2/22.
//

import SwiftUI

struct ExploreView: View{
    @ObservedObject var viewModel: ViewModel  // Use the passed ViewModel
    @Binding var showMenu: Bool
    
    var body: some View {
        NavigationView{
            ZStack{
                HStack{
                    Spacer()
                    Image("ExploreBlob")
                        .offset(y: -85)
                }
                VStack{
                    ScrollView(.vertical){
                        ZStack{
                            RoundedRectangle(cornerRadius: 21)
                                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .frame(maxWidth: .infinity, minHeight: 52)
                                .opacity(0)
                            HStack(spacing: 20){
                                Button(action: {withAnimation {
                                            self.showMenu = true
                                }
                                }) {Image("Menu")}
                                    .padding(.leading, 35)
                                Spacer()
                                Button(action: {print("")}){
                                    Image("Search")
                                }
                                Button(action: {print("")}){
                                    Image("Notification")
                                        .offset(x: 0, y: 16)
                                        .frame(maxWidth: 30, maxHeight: 30)
                                        .padding(.trailing, 35)
                                }
                            }
                        }
                        Text("News")
                            .font(Font.custom("Lora-Medium", size: 32))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 31)
                            .padding(.leading, 35)
                            .padding(.bottom, 12)
                        ScrollView(.horizontal){
                            HStack(spacing:20){
                                Button(action: {}){
                                    ZStack{
                                        AsyncImage(url: URL(string:"https://cdn.animenewsnetwork.com/thumbnails/crop900x350g0U/cms/news.5/179519/mushoku_2_visual_03_a.jpg")){ image in image
                                                .resizable()
                                                .scaledToFill()
                                        } placeholder:{
                                            ProgressView()
                                        }
                                        .frame(width: 274, height: 160)
                                        .cornerRadius(15)
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.black)
                                            .frame(width: 274, height: 160)
                                            .opacity(0.2)
                                        Text("Mushoku Tensei: Jobless Reincarnation  Anime Gets 2nd Season")
                                            .foregroundColor(.white)
                                            .font(.custom("Lato Black", size: 20))
                                            .frame(width: 234, height: 160, alignment: .leading)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                                Button(action: {}){
                                    ZStack{
                                        AsyncImage(url: URL(string:"https://cdn.animenewsnetwork.com/thumbnails/crop900x350gKB/cms/news.5/183300/vis-2.jpg")){ image in image
                                                .resizable()
                                                .scaledToFill()
                                        } placeholder:{
                                            ProgressView()
                                        }
                                        .frame(width: 274, height: 160)
                                        .cornerRadius(15)
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.black)
                                            .frame(width: 274, height: 160)
                                            .opacity(0.2)
                                        Text("Classroom of the Elite TV Anime's Video Announces 2 More Seasons in July 2022 & 2023")
                                            .foregroundColor(.white)
                                            .font(.custom("Lato Black", size: 20))
                                            .frame(width: 234, height: 160, alignment: .leading)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                                Button(action: {}){
                                    ZStack{
                                        AsyncImage(url: URL(string:"https://cdn.animenewsnetwork.com/thumbnails/crop900x350gHG/cms/news.5/183274/winning_16big.jpg")){ image in image
                                                .resizable()
                                                .scaledToFill()
                                        } placeholder:{
                                            ProgressView()
                                        }
                                        .frame(width: 274, height: 160)
                                        .cornerRadius(15)
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.black)
                                            .frame(width: 274, height: 160)
                                            .opacity(0.3)
                                        Text("Kensho Ono, Megumi Ogata Win 16th Annual Seiyū Awards")
                                            .foregroundColor(.white)
                                            .font(.custom("Lato Black", size: 20))
                                            .frame(width: 234, height: 160, alignment: .leading)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }.offset(x:31)
                        }
                        Text("Popular").font(.custom("Lora-Medium", size: 32))
                            .frame(maxWidth:.infinity, alignment: .leading)
                            .padding(.top, 69)
                            .padding(.leading, 35)
                            .padding(.bottom, 16)
                        VStack(alignment: .leading){
                            ScrollView(.vertical, showsIndicators: false){
                                VStack(spacing: 19){
                                    ForEach(viewModel.list){ manga in
                                        NavigationLink(
                                            destination: MangaView(manganame: manga.name, mangaauthor: manga.author, mangacover: manga.cover, mangainfo: manga.info, mangarating: manga.rating, mangastatus: manga.status, mangatag1: manga.tag1, mangatag2:manga.tag2 ,mangatag3: manga.tag3,mangatag4:manga.tag4 ,mangatag5: manga.tag5, viewModel: viewModel)
                                                .navigationBarHidden(true)
                                              ){
                                            HStack(spacing:17){
                                                AsyncImage(url: URL(string:manga.cover)) { image in
                                                    image.resizable()
                                                } placeholder:{
                                                    ProgressView()
                                                }
                                                .frame(width: 42.6, height: 63.9)
                                                .cornerRadius(9)
                                                VStack(alignment: .leading, spacing: 3){
                                                    Text(manga.name).font(.custom("Lora-Medium", size: 18)).foregroundColor(Color(#colorLiteral(red: 0.13, green: 0.13, blue: 0.13, alpha: 1))).tracking(-0.09)
                                                        .frame(width: 182.4, alignment:.leading)
                                                        .lineLimit(2)
                                                        .lineSpacing(2.2)
                                                        .fixedSize(horizontal: false, vertical: true)
                                                        .multilineTextAlignment(.leading)
                                                    Text(manga.author).font(.custom("Lato Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                                        .frame(width: 182.4, alignment: .leading)
                                                        .lineLimit(1)
                                                    Spacer()
                                                        .frame(minHeight: 0)
                                                }
                                                .frame(maxHeight:58)
                                                Spacer()
                                                Text(manga.rating).font(.custom("Lora-Bold", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.16, green: 0.16, blue: 0.16, alpha: 1))).tracking(0.4).multilineTextAlignment(.trailing)
                                                    .padding(.bottom, 19)
                                            
                                            }
                                            .frame(maxHeight:63.9)
                                        }
                                    }
                                }
                                .padding(.horizontal, 30)
                            }
                            .frame(maxWidth:.infinity, maxHeight: 400)
                        }
                    }.padding(.top, 4)
                }
            }.navigationBarHidden(true)
        }
    }
    init(viewModel: ViewModel, showMenu: Binding<Bool>) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
        self._showMenu = showMenu
        print("ExploreView initialized, showMenu is: \(showMenu.wrappedValue)")
        viewModel.getData() // Use viewModel here instead of model
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ViewModel()  // Create an instance of ViewModel
        let hideNavBar = HideNavBar()  // Create an instance of HideNavBar if needed
        return ExploreView(viewModel: viewModel, showMenu: .constant(false))
            .environmentObject(hideNavBar)
            .previewDevice("iPhone 12")
    }
}

