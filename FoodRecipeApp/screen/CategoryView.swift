//
//  CategoryView.swift
//  FoodRecipeApp
//
//  Created by Asadulla Juraev on 15.05.2021.
//

import SwiftUI

struct CategoryView: View {
    @State var isFullInfo = false
    
    var body: some View {
        ZStack{
            VStack{
                
                GeometryReader { geo in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack (spacing: 15) {
                            HStack(spacing: 15){
                                Button(action: {
                                    withAnimation {
                                        isFullInfo.toggle()
                                    }
                                    
                                }) {
                                    Image("f1").resizable().scaledToFill()
                                        .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                        .clipped()
                                        .overlay(
                                            LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                                .frame(maxWidth: .infinity, maxHeight: 100)
                                                .overlay(
                                                Text("Breakfast")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.bold)
                                                    .padding()
                                                    ,alignment: .bottomLeading)
                                            ,alignment: .bottom
                                    )
                                }
                                Image("f2").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Lunch")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                            }
                            HStack(spacing: 15){
                                Image("f3").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Dessert")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                                Image("f4").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Beferage")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                            }
                            HStack(spacing: 15){
                                Image("f5").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Dinner")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                                Image("f6").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Snack")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                                
                            }
                            HStack(spacing: 15){
                                Image("pr1").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Dessert")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                                Image("pr2").resizable().scaledToFill()
                                    .frame(width: geo.size.width / 2.1, height: geo.size.height / 3.2)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                            .frame(maxWidth: .infinity, maxHeight: 100)
                                            .overlay(
                                            Text("Dessert")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .padding()
                                                ,alignment: .bottomLeading)
                                        ,alignment: .bottom
                                    )
                            }
                            
                        }
                    }
                }
            }
            .padding()
            ZStack{
                InsideView(image: "f1", title: "title", isFullInfo: $isFullInfo)
            }.offset(x: 0, y: self.isFullInfo ? 0 : UIApplication.shared.keyWindow?.frame.height ?? 0)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
