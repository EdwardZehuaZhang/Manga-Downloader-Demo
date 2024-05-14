//
//  LoginView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 21/3/22.
//

import SwiftUI

struct SignupView: View {
    
    @EnvironmentObject var hideBar : HideNavBar

    var body: some View {
        NavigationView{
            ZStack{
                Image("Login UI")
                    .padding(15)
                    .onAppear(){
                        hideBar.HideBar = true
                     }
                    .onDisappear(){
                        hideBar.HideBar = false
                    }
            }.ignoresSafeArea(.all)
        }.navigationBarHidden(true)
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
        
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())
    }
}
