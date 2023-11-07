//
//  SignUpUI.swift
//  3DCaptureHack
//
//  Created by Raphael Fassotte on 07/11/2023.
//

import SwiftUI

struct SignUpUI: View {
    @State var email = ""
    @State var password = ""
    @State var passwordAgain = ""

    var body: some View {
        if #available(iOS 15.0, *) {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .opacity(0.9)
                VStack {
                    Text("Sign up")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                        .foregroundColor(Color.primary.opacity(0.4))

                    Text("Create a new account")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Divider().padding()

                    VStack(spacing: 12) {
                        TextField("Enter username", text: $email)
                            .modifier(ConcaveGlassModifier())

                        TextField("Enter email", text: $email)
                            .modifier(ConcaveGlassModifier())

                        SecureField("Enter password", text: $password)
                            .modifier(ConcaveGlassModifier())

                        SecureField("Re-enter password", text: $passwordAgain)
                            .modifier(ConcaveGlassModifier())
                    }
                    .padding()

                    Divider().padding()

                    Text("By signing up you accept the **Terms of Service** and **Privacy Policy**")
                        .font(.footnote)

                    Button {
                        //TODO: - Faire l'action
                    } label: {
                        ZStack {
                            Text("SIGN UP")
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: 50)
                                .modifier(ConcaveGlassModifier())
                                .padding(.bottom, 8)
                        }
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
                .foregroundColor(Color.primary.opacity(0.35))
                .foregroundStyle(.ultraThinMaterial)
                .cornerRadius(35)
                .padding()
            }
        } else {
            VStack {
            }
        }
    }
}

#Preview {
    SignUpUI()
}
