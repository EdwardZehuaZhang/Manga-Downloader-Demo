//
//  InDevelopmentView.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 6/3/22.
//

import SwiftUI

struct InDevelopmentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("in maintainance")
            }.navigationBarHidden(true)
        }
    }
}

struct InDevelopmentView_Previews: PreviewProvider {
    static var previews: some View {
        InDevelopmentView()
            .previewDevice("iPhone 12")
    }
}
