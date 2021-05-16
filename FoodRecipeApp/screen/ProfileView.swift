//
//  ProfileView.swift
//  FoodRecipeApp
//
//  Created by Asadulla Juraev on 15.05.2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack{
                Text("Profile").fontWeight(.bold)
                    .font(.title2)
                Spacer()
            }.padding(.bottom, 10)
            VStack{
                Image("profile")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .frame(width: 158, height: 158)
                            .foregroundColor(.white)
                            .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0.0, y: 5)
                    )
                    .padding()
                Text("Juraev Asadulla")
                    .fontWeight(.medium)
                    .font(.title2)
                    .padding(.bottom, 1)
                Text("tezkormedia@gmail.com")
                    .fontWeight(.light)
                    .font(.none)
                    .foregroundColor(.gray)
            }.padding(.bottom)
            
            VStack(alignment: .leading){
                Group {
                    HStack{
                        Text("Account")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.vertical, 10)
                    SettingButton(text: "Account", image: "person.fill")
                }
                
                Group {
                    HStack{
                        Text("General")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.vertical, 10)
                    SettingButton(text: "Settings", image: "gearshape.fill")
                    SettingButton(text: "Terms of service", image: "doc.plaintext.fill")
                    SettingButton(text: "App Info", image: "exclamationmark.triangle.fill")
                    SettingButton(text: "Support", image: "headphones.circle.fill")
                    SettingButton(text: "Logout", image: "arrow.forward.square.fill")
                    
                }
                
            }
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1)),Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        )
        
    }
}

struct SettingButton: View {
    var text = ""
    var image = ""
    
    var body: some View {
        Button(action: {
            
        }){
            Image(systemName: image)
                .font(.title2)
                .padding(.trailing, 4)
            Text(text)
                .fontWeight(.regular)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.top, 0)
        .foregroundColor(.black)
        Divider()
            .padding(.leading, 35)
            .padding(.top, 0)
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
