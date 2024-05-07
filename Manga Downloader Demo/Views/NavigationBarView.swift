//
//  NavigationBarView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 19/3/22.
//

import SwiftUI

struct NavigationBarView: View {
    
    @Binding var selection : Int
    @EnvironmentObject var hideBar : HideNavBar

    
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                VStack(spacing: 0){
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0.9607843160629272, green: 0.9607843160629272, blue: 0.9607843160629272, alpha: 1)))
                    .frame(width: nil, height: 1)
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: nil, height: 83)
                        .opacity(1)
                        .onAppear(){
                            selection = 2
                        }
                        .opacity(1)
                }
                HStack(spacing:81){
                    Button(action: {
                        self.selection = 1
                    } ) {
                        Image(self.selection == 1 ? "LibraryColored" : "Library")
                    }
                    Button(action: {
                        self.selection = 2
                    } ) {
                        Image(self.selection == 2 ? "MainColored" : "Main")
                    }
                    Button(action: {
                        self.selection = 3
                    } ) {
                    Image(self.selection == 3 ? "AccountColored" : "Account")
                    }
                }
                .padding(.bottom, 15)
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .isHidden(hideBar.HideBar)
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(selection: .constant(2))
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())
    }
}
