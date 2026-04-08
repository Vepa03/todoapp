//
//  RegisterView.swift
//  todoapp
//
//  Created by Vepa Babayev on 2026. 04. 06..
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Image("login").resizable().frame(width:100, height:150)
                }.padding(.top, 100)
                Form{
                    Section(header: Text("KAYIT FORMU")){
                        TextField("Full Name", text:$name)
                        TextField("email", text:$name)
                        SecureField("password", text:$password)
                    }
                }.frame(height: 200)
                Button(action: {}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).foregroundStyle(.primary)
                        Text("Girish yap").foregroundStyle(.white)
                    }
                }).frame(height: 50).padding(.horizontal)
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
