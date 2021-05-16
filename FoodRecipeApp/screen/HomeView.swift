//
//  HomeView.swift
//  FoodRecipeApp
//
//  Created by Asadulla Juraev on 15.05.2021.
//

import SwiftUI

struct HomeView: View {
    @State var showingDetail = false
    @State var searchType = ""
    
    @State var insideImage = ""
    @State var insideTitle = ""
    
    let headerItem = ["hi1":"Breakfast", "hi2":"Lunch", "hi3":"Dessert"]
    
    let popRe = ["pr1": "Healthy Snacks", "pr2" : "Ice Cream", "pr3" : "Smoothie"]
    
    var body: some View {
        ZStack {
            VStack{
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        HStack{
                            Text("Food").fontWeight(.bold)
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 0.6083697081, green: 0.7533934116, blue: 0.2352745831, alpha: 1)))
                                + Text("Recipe").fontWeight(.bold)
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 0.3796703219, green: 0.6236693263, blue: 0.5077730417, alpha: 1)))
                            Spacer()
                        }
                        //: LOGO
                        // GOODMORNING
                        HStack{
                            VStack(alignment: .leading){
                                Text("Good Morning,").fontWeight(.bold)
                                Text("Asadulla").fontWeight(.bold)
                            }.font(.title2)
                            Spacer()
                            
                            Image("profile").resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                            
                        }
                        //: GOODMORNING
                        // SEARCH
                        HStack{
                            HStack{
                                Image(systemName: "magnifyingglass")
                                TextField("Search recipe here", text: $searchType)
                            }.padding()
                            .background(
                                Color.white
                            )
                            .shadow(color: .gray.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
                            HStack{
                                Image(systemName: "slider.horizontal.3")
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                            }.padding()
                            .padding([.bottom, .top], 2)
                            .background(
                                Color.white
                            )
                            .shadow(color: .gray.opacity(0.1), radius: 10, x: 0.0, y: 0.0)
                        }
                        .padding(.top, 10)
                        //: SEARCH
                        
                        //HEADER MENU
                        HStack {
                            ForEach(headerItem.sorted(by: <), id: \.key) { key, value in
                                VStack{
                                    Image(key).resizable().renderingMode(.template)
                                        .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                        .frame(width: 70, height: 70)
                                    Text(value).font(.system(size: 14))
                                }.padding()
                                .frame(width: 110, height: 150)
                                .background(Color.white)
                            }
                        }.padding(.top, 20)
                        .padding(.bottom, 20)
                        //: HEADERMENU
                        
                        HStack{
                            Text("Popular Recipes").fontWeight(.bold)
                                .font(.title2)
                            Spacer()
                        }
                        //: TITLE
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(popRe.sorted(by: <), id: \.key) { key, value in
                                    Button(action: {
                                        withAnimation {
                                            showingDetail.toggle()
                                            insideImage = key
                                            insideTitle = value
                                        }
                                    }, label: {
                                        PopRecipe(text: value, image: key, showingDetail: $showingDetail)
                                            .padding(.trailing, 20)
                                    })
                                    
                                }
                            }
                        }
                        //: POPULAR RECIPES END
                        
                    }.padding()
                }
            }.padding(.top, 50)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1)),Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            )
            
            ZStack{
                InsideView(image: insideImage, title: insideTitle, isFullInfo: $showingDetail)
            }.offset(x: 0, y: self.showingDetail ? 0 : UIApplication.shared.keyWindow?.frame.height ?? 0)
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct PopRecipe: View{
    var text = ""
    var image = ""
    @Binding var showingDetail: Bool
    var body: some View {
        
        Image(image).resizable()
            .scaledToFill()
            .frame(width: 200, height: 280)
            .clipped()
            .overlay(
                Rectangle().padding().foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 130, alignment: .bottom)
                    .overlay(
                        VStack(alignment: .leading, spacing: 4) {
                            Text(text).fontWeight(.bold)
                                .foregroundColor(.black)
                            HStack(spacing: 3){
                                Image(systemName: "clock")
                                Text("15 M Prep Time")
                            }.foregroundColor(.gray)
                            .font(.system(size: 11))
                            HStack(spacing: 3){
                                Image(systemName: "clock")
                                Text("45 M Cook Time")
                            }.foregroundColor(.gray)
                            .font(.system(size: 11))
                            HStack(spacing: 4){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill").foregroundColor(.gray.opacity(0.7))
                            }.foregroundColor(Color(#colorLiteral(red: 0.3691215515, green: 0.6315287352, blue: 0.4989493489, alpha: 1))).font(.system(size: 11))
                            
                            
                        }
                        
                    )
                
                , alignment: .bottom
            )
            .frame(width: 200, height: 280)
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
