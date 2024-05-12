//
//  HistoryView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 23/2/22.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    HStack{
                        Spacer()
                        Image("HistoryBlob1")
                            .resizable()
                            .scaledToFit()
                            .frame(width:128.0, height: 128.0)
                            .padding(.bottom, 130)
                            .offset(x:41, y:0)
                    }
                    Spacer()
                    HStack{
                        Image("HistoryBlob2")
                            .resizable()
                            .scaledToFit()
                            .frame(width:190.0, height: 190.0)
                            .padding(.bottom, 130)
                            .offset(x:-83, y:0)
                        Spacer()
                    }
                }.ignoresSafeArea()
                ScrollView(.vertical){
                    VStack{
                        VStack(alignment: .leading){
                            HStack{
                                Image("Menu")
                                    .padding(.top, 48)
                                    .padding(.bottom, 35)
                                    .padding(.leading, 5)
                                Spacer()
                            }
                            HStack{
                                Text("Today").font(.custom("Lora Medium", size: 22))
                                Spacer()
                                Text("See Others").font(.custom("Lato Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                Image("Arrow")
                                    .padding(.leading, 10)
                            }.padding(.bottom, 15)
                        }.padding(.horizontal, 30)
                        ScrollView(.horizontal){
                            HStack(spacing: 25){
                                ZStack{
                                    AsyncImage(url: URL(string:"https://wallpapercave.com/wp/wp2874998.jpg")) { image in image
                                            .resizable()
                                            .scaledToFill()
                                    } placeholder:{
                                        ProgressView()
                                    }
                                    .frame(width: 281, height: 143)
                                    .cornerRadius(14)
                                    .opacity(0.09)
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("Naruto").font(.custom("Lora Medium", size: 18))
                                                .lineLimit(2)
                                            Text("Chapter 158 Page 3").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                                .padding(.top, -4)
                                        }
                                        .padding(.top, 52)
                                        .padding(.leading, 22)
                                        Spacer()
                                    }
                                }
                                ZStack{
                                    AsyncImage(url: URL(string:"https://wallpaperaccess.com/full/4500174.jpg")) { image in image
                                            .resizable()
                                            .scaledToFill()
                                    } placeholder:{
                                        ProgressView()
                                    }
                                    .frame(width: 281, height: 143)
                                    .cornerRadius(14)
                                    .opacity(0.09)
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("One-Punch Man").font(.custom("Lora Medium", size: 18))
                                                .lineLimit(2)
                                            Text("Chapter 160 Page 16").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                                .padding(.top, -4)
                                        }
                                        .padding(.top, 52)
                                        .padding(.leading, 22)
                                        Spacer()
                                    }
                                }
                                
                            }.padding(.leading, 30)
                        }
                        HStack{
                            Text("This week").font(.custom("Lora Medium", size: 22))
                            Spacer()
                            Image("More")
                        }.padding(.horizontal, 30).padding(.top, 50)
                        HStack{
                            Text("MAR").font(.custom("Lato Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1))).multilineTextAlignment(.center)
                                .padding(.leading, 1)
                                .padding(.top, 5)
                                .textCase(.uppercase)
                            Spacer()
                            }.padding(.horizontal, 30)
                        HStack{
                            VStack{
                                ZStack{
                                    Image("DateBackground")
                                        .padding(.top, 10)
                                    HStack(spacing: 4){
                                        Text("15").font(.custom("Lato Bold", size: 20)).multilineTextAlignment(.center)
                                        Text("TUE").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                                        .textCase(.uppercase)
                                    }
                                }
                            }
                            Spacer()
                        }.frame(height:35)
                        HStack{
                            Image("DateLine")
                                .padding(.leading, 10)
                                .padding(.top, -17)
                            Spacer()
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                    .frame(width: 213, height: 68)
                                    .opacity(0.09)
                                    VStack(alignment: .leading, spacing:7){
                                        Text("Attack on Titan").font(.custom("Lato Bold", size: 14))
                                        HStack{
                                            Text("Chapter 139 Page 8").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                            Text("46min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                        }
                                    }.padding(.trailing, 30).offset(x:-6)
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                    .frame(width: 213, height: 68)
                                    .opacity(0.09)
                                    VStack(alignment: .leading, spacing:7){
                                        Text("Fire Force").font(.custom("Lato Bold", size: 14))
                                        HStack{
                                            Text("Chapter 301 Page 6").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                            Text("1h 23min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                        }
                                    }.padding(.trailing, 30)
                                }
                            }.padding(.trailing, 8)
                        }.padding(.horizontal, 30).padding(.bottom, 15)
                        HStack{
                            Text("FEB").font(.custom("Lato Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1))).multilineTextAlignment(.center)
                                .padding(.leading, 1)
                                .padding(.top, 5)
                            Spacer()
                            }.padding(.horizontal, 30)
                        HStack{
                            VStack{
                                ZStack{
                                    Image("DateBackground")
                                        .padding(.top, 10)
                                    HStack(spacing: 4){
                                        Text("31").font(.custom("Lato Bold", size: 20)).multilineTextAlignment(.center)
                                        Text("MON").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                                        .textCase(.uppercase)
                                    }
                                }
                            }
                            Spacer()
                        }.frame(height:35)
                        HStack{
                            VStack{
                                Image("DateLine")
                                    .padding(.leading, 10)
                                    .padding(.top, -17)
                                Image("DateLine")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:1.5, height:80)
                                    .clipped()
                                    .padding(.leading, 10)
                                    .padding(.top, -17)
                                    .offset(y:12)
                            }
                            .offset(y:-3)
                            Spacer()
                            VStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                    .frame(width: 213, height: 68)
                                    .opacity(0.09)
                                    VStack(alignment: .leading, spacing:7){
                                        Text("Demon Slayer").font(.custom("Lato Bold", size: 14))
                                        HStack{
                                            Text("Chapter 158 Page 3").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                            Text(" 32min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                        }
                                    }.padding(.trailing, 30)
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                    .frame(width: 213, height: 68)
                                    .opacity(0.09)
                                    VStack(alignment: .leading, spacing:7){
                                        Text("One Piece").font(.custom("Lato Bold", size: 14))
                                        HStack{
                                            Text("Chapter 2 Page 19").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                            Text("1h 3min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                        }
                                    }.padding(.trailing, 30)
                                }
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                    .frame(width: 213, height: 68)
                                    .opacity(0.09)
                                    VStack(alignment: .leading, spacing:7){
                                        Text("Chainsaw Man").font(.custom("Lato Bold", size: 14))
                                        HStack{
                                            Text("Chapter 45 Page 7").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                            Text("4h 3min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                        }
                                    }.padding(.trailing, 30)
                                }
                            }.padding(.trailing, 8)
                        }.padding(.horizontal, 30).padding(.bottom, 15)
                        Group{
                            HStack{
                                Text("JAN").font(.custom("Lato Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1))).multilineTextAlignment(.center)
                                    .padding(.leading, 1)
                                    .padding(.top, 5)
                                Spacer()
                                }.padding(.horizontal, 30)
                            HStack{
                                VStack{
                                    ZStack{
                                        Image("DateBackground")
                                            .padding(.top, 10)
                                        HStack(spacing: 4){
                                            Text("26").font(.custom("Lato Bold", size: 20)).multilineTextAlignment(.center)
                                            Text("SUN").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))).multilineTextAlignment(.center)
                                                .textCase(.uppercase)
                                        }
                                    }
                                }
                                Spacer()
                            }.frame(height:35)
                            HStack{
                                Image("DateLine")
                                    .padding(.leading, 10)
                                    .padding(.top, -17)
                                Spacer()
                                VStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                            .frame(width: 213, height: 68)
                                            .opacity(0.09)
                                        VStack(alignment: .leading, spacing:7){
                                            Text("Fire Force").font(.custom("Lato Bold", size: 14))
                                            HStack{
                                                Text("Chapter 205 Page 29").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                                Text("12min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                            }
                                        }.padding(.trailing, 30).offset(x:-6)
                                    }
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
                                            .frame(width: 213, height: 68)
                                            .opacity(0.09)
                                        VStack(alignment: .leading, spacing:7){
                                            Text("Naruto").font(.custom("Lato Bold", size: 14))
                                            HStack{
                                                Text("Chapter 123 Page 12").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                                Text("1h 23min").font(.custom("Lato Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.47, green: 0.33, blue: 0.97, alpha: 1)))
                                            }
                                        }.padding(.trailing, 30)
                                    }
                                }.padding(.trailing, 8)
                            }.padding(.horizontal, 30).padding(.bottom, 15)
                        }
                    }.padding(.top, -30)
                }
            }.navigationBarHidden(true)

        }
    }
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
            .previewDevice("iPhone 12")
    }
}
