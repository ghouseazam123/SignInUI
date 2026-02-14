//
//  ContentView.swift
//  SignInUI
//
//  Created by next on 14/02/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                TopGradientView()
                SignInView()
            }
        }
    }
}

struct TopGradientView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            VStack {

                Image("ProfileImage")
                    .resizable()
//                    .scaledToFill()
                    .clipped()
                   // .padding(.top,40)
                
            }
        }
//        .frame(height: 364)
        .frame(maxWidth: .infinity)
        .ignoresSafeArea()
    }

}
struct SignInView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // 48 from Gradient
            Text("Sign In")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.black)
                .padding(.top, 48)
            
            
            // 32 spacing
            Text("What’s your Mobile Number?")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(Color(hex: "#3C5777"))
                .padding(.top, 32)
            
            
            // 12 spacing
            HStack(spacing: 5) {
                
                Image("Flag")
                    .resizable()
                    .frame(width: 24, height: 18)
                
                Text("+91")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(hex: "#2F3237"))
                
                Button(action: {
                    print("DownArrow tapped")
                }) {
                    Image("DownArrow")
                        .resizable()
                        .frame(width: 24, height: 24)
                        
                }
                .contentShape(Rectangle())
                .buttonStyle(.plain)
                
                Rectangle()
                    .fill(Color(hex: "#D8E7F2"))
                    .frame(width: 1, height: 24)
                
                Text("9876543210")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(Color(hex: "#122D4D"))
                    .tracking(1.73)
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .frame(height: 48)
            .background(Color(hex: "#F0F4F7"))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(hex: "#D8E7F2"), lineWidth: 1)
            )
            .cornerRadius(12)
            .padding(.top, 12)
            
            
            // 23 spacing
            Button(action: {
                
                print("Send OTP tapped")
            }) {
                Text("Send OTP")
                    .font(.custom("Outfit-Medium", size: 14))
                    .foregroundColor(.white)
                    .frame(height: 40)
                    .frame(maxWidth: .infinity)
                    .background(Color(hex: "#30558E"))
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(hex: "#30558E").opacity(0.4), lineWidth: 1)
                    )
                    .shadow(color: Color(hex: "#1C4567").opacity(0.21), radius: 6, x: 0, y: 3)
            }
            .padding(.top, 23)
            .buttonStyle(.plain)
            // 23 spacing
            HStack(spacing: 12) {
                
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(hex: "#D5DCE2"),
                                Color(hex: "#D5DCE2").opacity(0)
                            ]),
                            startPoint: .trailing,
                            endPoint: .leading
                        )
                    )
                    .frame(height: 1)
                
                Text("Or")
                    .font(.system(size: 12))
                    .foregroundColor(Color(hex: "#646464"))
                    .frame(width: 14, height: 15, alignment: .center)
                
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(hex: "#D5DCE2"),
                                Color(hex: "#D5DCE2").opacity(0)
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(height: 1)
            }
            .padding(.top, 23)
            
            
            // 23 spacing
            Button(action: {
                
                print("Login with Password tapped")
            }) {
                Text("Login with Password")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color(hex: "#30558E"))
                    .frame(maxWidth: .infinity, alignment: .center)
                    
            }
            .padding(.top, 23)
            .buttonStyle(.plain)
            
            
            Spacer()
            
            
            HStack(spacing: 0) {
                Text("Don’t have an account yet?")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(hex: "#646464"))
                
                Button(action: {
                    
                    print("Sign Up tapped")
                }) {
                    Text(" Sign Up")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(hex: "#30558E"))
                }.buttonStyle(.plain)
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 32)
        }
        .padding(.horizontal, 24)
    }
}
extension Color {
    init(hex: String, opacity: Double = 1.0) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        self.init(
            red: Double((int >> 16) & 0xFF) / 255,
            green: Double((int >> 8) & 0xFF) / 255,
            blue: Double(int & 0xFF) / 255,
            opacity: opacity
        )
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
