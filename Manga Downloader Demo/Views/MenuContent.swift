import SwiftUI

struct MenuContent: View {
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    HStack {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: 319.9, height: UIScreen.main.bounds.height)
                    }
                    VStack {
                        Spacer()
                        Image("Gradient Wave")
                    }
                    VStack {
                        HStack {
                            Image("Profile Photo").offset(x: 2)
                            VStack(alignment: .leading) {
                                Text("Hello").font(.custom("Lato Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1))) +
                                Text(" 👋 ").font(.custom("Metropolis Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
                                Text("tianshan.z").font(.custom("Lato Medium", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.51, green: 0.51, blue: 0.58, alpha: 1)))
                            }.offset(x: 3)
                            Spacer()
                            Image("Scan").offset(x: -2)
                        }
                        Image("Premium").frame(height: 170).offset(x: 2, y: -3)
                        VStack(alignment: .leading, spacing: 35) {
                            MenuItem(iconName: "Files", text: "LIBRARY")
                            MenuItem(iconName: "Shop", text: "SHOP")
                            MenuItem(iconName: "Chat", text: "CHAT")
                            MenuItem(iconName: "Links", text: "LINK")
                            MenuItem(iconName: "Customize", text: "CUSTOMIZE")
                            MenuItem(iconName: "Moon", text: "DARK MODE", trailingIconName: "Light Mode")
                        }.padding(.leading, 4)
                        RoundedRectangle(cornerRadius: 3)
                            .fill(Color(#colorLiteral(red: 0.5974092483520508, green: 0.5974092483520508, blue: 0.6474750638008118, alpha: 0.5)))
                            .frame(width: 274, height: 4)
                            .opacity(0.2)
                        VStack(alignment: .leading, spacing: 35) {
                            MenuItem(iconName: "Settings", text: "SETTINGS")
                            MenuItem(iconName: "Information", text: "INFORMATION")
                        }.padding(.top, 25).padding(.leading, 4)
                    }.frame(width: 268).padding(.bottom, 17)
                }
                .ignoresSafeArea(edges: .all)
                .navigationBarHidden(true)
                Spacer()
            }
        }
    }
}

struct MenuItem: View {
    var iconName: String
    var text: String
    var trailingIconName: String?

    var body: some View {
        HStack(spacing: 17) {
            Image(iconName)
            Text(text)
                .font(.custom("Lato Regular", size: 17))
                .foregroundColor(Color(#colorLiteral(red: 0.6, green: 0.6, blue: 0.65, alpha: 1)))
            Spacer()
            if let trailingIconName = trailingIconName {
                Image(trailingIconName)
                    .padding(.trailing, 9)
            } else {
                Image("RightArrow")
                    .padding(.trailing, 9)
            }
        }
        .padding(.horizontal, 5)
    }
}

struct MenuContent_Previews: PreviewProvider {
    static var previews: some View {
        MenuContent()
            .previewDevice("iPhone 12")
    }
}
