import SwiftUI

struct AccountView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                Image("Mountain")
                    .opacity(1)
                    .padding(.top, 270)
                VStack {
                    VStack {
                        Image("Hat")
                            .resizable()
                            .opacity(0)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
                            .padding(.bottom, 0)
                        Image("LOG IN")
                            .padding(.bottom, 60)
                        VStack {
                            HStack {
                                TextField("Username", text: $username)
                                    .font(.custom("Lato Medium", size: 15))
                                    .foregroundColor(Color(.sRGB, red: 0.6, green: 0.6, blue: 0.65))
                                    .multilineTextAlignment(.trailing)
                                    .padding(.horizontal, 7)
                                    .frame(width: 308.6, height: 20)
                                Spacer()
                            }
                            Rectangle()
                                .fill(Color(.sRGB, red: 0.5974, green: 0.5974, blue: 0.6475))
                                .frame(width: 308.6, height: 1.4)
                                .rotationEffect(.degrees(180))
                                .padding(.bottom, 35)
                            HStack {
                                SecureField("Password", text: $password)
                                    .font(.custom("Lato Medium", size: 15))
                                    .foregroundColor(Color(.sRGB, red: 0.6, green: 0.6, blue: 0.65))
                                    .multilineTextAlignment(.trailing)
                                    .padding(.horizontal, 7)
                                    .frame(width: 308.6, height: 20)
                            }
                            Rectangle()
                                .fill(Color(.sRGB, red: 0.5974, green: 0.5974, blue: 0.6475))
                                .frame(width: 308.6, height: 1.4)
                        }.padding(.bottom, 60)
                        VStack(spacing: 20) {
                            HStack {
                                Text("OR").font(.custom("Lato Bold", size: 15)).multilineTextAlignment(.center)
                                Spacer()
                            }
                            HStack {
                                NavigationLink(destination: SignupView()) {
                                    Image("SIGN UP")
                                }
                                .offset(x: -3)
                                Spacer()
                            }
                        }
                    }
                    .frame(width: 308.6, height: 119.9)
                    .padding(.bottom, 320)
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())
    }
}
