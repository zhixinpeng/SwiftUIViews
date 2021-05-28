//
//  EffectRelatedModifiers.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct EffectRelatedModifiers: View {
    var colors = Gradient(colors: [.white, .blue])
    
    var body: some View {
        VStack {
            // MARK: -  渐变色
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(gradient: colors, startPoint: .topLeading, endPoint: .bottomTrailing))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(RadialGradient(gradient: colors, center: .center, startRadius: 1, endRadius: 100))
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(AngularGradient(gradient: colors, center: .center))
            }
            .frame(height: 150)
            
            // MARK: - 基础色
            HStack {
                Color.red
                Color.orange
                Color.yellow
                Color.green
                Color.blue
                Color.purple
                Color.primary
                Color.secondary
                Color(red: 100, green: 100, blue: 0)
                Color(hex: "4287f5")
            }
            .frame(height: 50)
            
            // MARK: - 边框
            HStack {
                Circle()
                    .border(Color.green, width: 3)
                Circle()
                    .strokeBorder(Color.green, lineWidth: 3)
            }
            .foregroundColor(.white)
            .padding()
            
            // MARK: - 旋转及缩放
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .rotation3DEffect(
                        .degrees(30),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                
                RoundedRectangle(cornerRadius: 10)
                    .scaleEffect(0.6)
            }
            .foregroundColor(.yellow)
            .padding()
            
            // MARK: - 阴影与圆角
            HStack {
                Rectangle()
                    .cornerRadius(10)
                Circle()
                    .shadow(radius: 10, x: 10, y: 10)
            }
            .foregroundColor(.blue)
            .padding()
            
            // MARK: - 半透明度与虚化
            HStack {
                Circle()
                    .opacity(0.1)
                Circle()
                    .blur(radius: 3.0)
            }
            .foregroundColor(.red)
            .padding()
            
            // MARK: - 材质
            ZStack {
                Rectangle()
                    .fill(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)))
                Text("毛玻璃背景")
                    .font(.title)
                    .bold()
                    .padding(.all, 30)
                    .glassEffect()
                    .cornerRadius(10)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255, opacity: Double(a) / 255)
    }
}

struct GlassEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemUltraThinMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

extension View {
    func glassEffect() -> some View {
        self.background(GlassEffect())
    }
}

struct EffectRelatedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        EffectRelatedModifiers()
    }
}
