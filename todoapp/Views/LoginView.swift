//
//  LoginView.swift
//  todoapp
//
//  Created by Vepa Babayev on 2026. 04. 06..
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Image("login").resizable().frame(width:100, height:150)
                }.padding(.top, 100)
                Form{
                    TextField("Email", text: $email)
                    SecureField("Password", text:$password)
                }.frame(height: 150)
                Button(action: {}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).foregroundStyle(.primary)
                        Text("Girish yap").foregroundStyle(.white)
                    }
                }).frame(height: 50).padding(.horizontal)
                Spacer()
                
                VStack{
                    Text("Burada yeni misin?")
                    NavigationLink("Yeni hesap olustur", destination: RegisterView())
                }.padding(.bottom, 150)
                
            }
        }
    }
}

#Preview {
    LoginView()
}
