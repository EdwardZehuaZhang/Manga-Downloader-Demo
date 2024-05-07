//  Converted by Storyboard to SwiftUI Converter - https://swiftify.com/converter/storyboard2swiftui

import SwiftUI

// --------------------------------------------------------------------------------
// UIViewController
// --------------------------------------------------------------------------------
struct LaunchScreen: View {
    
    @State private var progress = 0.0
    
    let timer = Timer.publish(every: 1/40, on: .main, in: .common).autoconnect()

    var body: some View {
        
        ZStack(alignment: .topLeading) {
            GeometryReader { geometry in
                Text("")
                    .frame(dynamicWidth: 414, dynamicHeight: 0, alignment: .center)
                    .clipped()
                    .font(.system(size: 17, weight: .regular))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.0, green: 0.0, blue: 0.0))
                    .offset(dynamicX: 0, dynamicY: 876)
                ZStack{
                    ProgressView(value: self.progress, total: 100)
                        .onReceive(timer) { _ in
                            if self.progress < 100 {
                                self.progress += 1
                            }
                        }
                        .frame(dynamicWidth: 155, dynamicHeight: 4)
                        .clipped()
                        .offset(dynamicX: 189, dynamicY: 540)
                        .tint(Color(red: 0.34509805, green: 0.3372549, blue: 0.8392157))
                        .shadow(color: Color(red: 0.34509805, green: 0.3372549, blue: 0.8392157), radius: 4.0, x: 0.0, y: 2.0)
                    }

                Image("ExploreBlob")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(dynamicWidth: 413, dynamicHeight: 465)
                    .clipped()
                    .offset(dynamicX: -186, dynamicY: -155)
                
                Text("Inspire.")
                    .frame(dynamicWidth: 76, dynamicHeight: 74, alignment: .leading)
                    .font(.custom("Lora-Medium", size: 20))
                    .foregroundColor(Color(red: 0.34509805, green: 0.3372549, blue: 0.8392157))
                    .offset(dynamicX: 270, dynamicY: 535)
            }
        }
        .frame(dynamicWidth: 414, dynamicHeight: 896)
        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
        .edgesIgnoringSafeArea(.all)
    }
}



struct LaunchScreen_Previews: PreviewProvider {

    static var previews: some View {

        LaunchScreen()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewInterfaceOrientation(.portrait)
            .preferredColorScheme(.light)

    }
}

// --------------------------------------------------------------------------------
// Dynamic Size Helper
// --------------------------------------------------------------------------------
struct DynamicSize {
    static private let baseViewWidth: CGFloat = 414.0
    static private let baseViewHeight: CGFloat = 896.0

    static func getHeight(_ height: CGFloat) -> CGFloat {
        return (height / baseViewHeight) * UIScreen.main.bounds.height
    }

    static func getWidth(_ width: CGFloat) -> CGFloat {
        return (width / baseViewWidth) * UIScreen.main.bounds.width
    }

    static func getOffsetX(_ x: CGFloat) -> CGFloat {
        return (x / baseViewWidth) * UIScreen.main.bounds.width
    }

    static func getOffsetY(_ y: CGFloat) -> CGFloat {
        return (y / baseViewHeight) * UIScreen.main.bounds.height
    }
}

// --------------------------------------------------------------------------------
// Frame and Offset Helper
// --------------------------------------------------------------------------------
extension View {
    func frame(dynamicWidth: CGFloat? = nil, dynamicHeight: CGFloat? = nil, alignment: Alignment = .center) -> some View {
        frame(
            width: DynamicSize.getWidth(dynamicWidth ?? 0),
            height: DynamicSize.getHeight(dynamicHeight ?? 0),
            alignment: alignment)
    }

    func offset(dynamicX: CGFloat = 0, dynamicY: CGFloat = 0) -> some View {
        offset(x: DynamicSize.getOffsetX(dynamicX), y: DynamicSize.getOffsetY(dynamicY))
    }
}

