//
//  SavedView.swift
//  FoodRecipeApp
//
//  Created by Asadulla Juraev on 15.05.2021.
//

import SwiftUI

struct SavedView: View {
    
    let filtertype = ["Beverage", "Breakfast", "Dinner", "Desser"]
    
    let dicFoods = ["f1" : "Jamur Tumis", "f2" : "Beaf Steak", "f3" : "Jus Jeruk", "f4" : "Coklat Ftoat", "f5" : "Salmon Steak", "f6" : "Pancake"]
    
    var body: some View {
            VStack {
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        HStack{
                            Text("Saved").fontWeight(.bold)
                                .font(.title2)
                            Spacer()
                        }.padding(.bottom, 10)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                HStack{
                                    Image(systemName: "slider.horizontal.3").font(.system(size: 14))
                                    Text("Filter and sort")
                                        .font(.system(size: 13))
                                }.padding()
                                .background(
                                    ZStack{
                                        Rectangle().foregroundColor(Color.white)
                                            .shadow(color: .gray.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
                                        Rectangle().strokeBorder(Color.black.opacity(0.13), lineWidth: 1.25)
                                    }
                                )//: HSTACK BACKGROUND
                                
                                HStack{
                                    Text("New to old")
                                        .font(.system(size: 13))
                                    Image(systemName: "xmark").font(.system(size: 14))
                                }.padding()
                                .background(
                                    ZStack{
                                        Rectangle().foregroundColor(Color.white)
                                            .shadow(color: .gray.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
                                        Rectangle().strokeBorder(Color.black.opacity(0.13), lineWidth: 1.25)
                                    }
                                )//: HSTACK BACKGROUND
                                
                                
                                ForEach(filtertype.indices) { index in
                                    HStack{
                                        Text(filtertype[index])
                                            .font(.system(size: 13))
                                    }.padding()
                                    .background(
                                        ZStack{
                                            Rectangle().foregroundColor(Color.white)
                                                .shadow(color: .gray.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
                                            Rectangle().strokeBorder(Color.black.opacity(0.13), lineWidth: 1.25)
                                        }
                                    )
                                } //: FOREACH
                            }
                            .padding(.vertical, 20)
                            //: HSTACK
                        }//: SCROLL VIEW HORIZONTAL
                        ForEach(dicFoods.sorted(by: <), id: \.key) { key, value in
                            
                            ViewFoods(title: value, image: key)
                            
                        }
                    }
                    
                }.padding()
                //: SCROLL VIEW VERTICAL
                
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1)),Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            )
            
    }//: BODY
    
}

struct ViewFoods: View{
    var title = ""
    var image = ""
    let filtertype = ["Beverage", "Breakfast", "Dinner", "Desser"]
    @State var isInside = false
    
    var body: some View{
        Button(action: {
            isInside.toggle()
        }) {
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading, spacing: 4) {
                    Text(title).fontWeight(.bold).foregroundColor(.black)
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
                Spacer()
                VStack(alignment: .trailing){
                    Image(systemName: "bookmark.fill").font(.title2).foregroundColor(Color(#colorLiteral(red: 0.3691215515, green: 0.6315287352, blue: 0.4989493489, alpha: 1)))
                    Spacer()
                    
                    HStack{
                        Text(filtertype.randomElement()!).foregroundColor(.gray)
                            .font(.system(size: 10))
                    }.padding(.all, 7)
                    .background(
                        ZStack{
                            Rectangle().foregroundColor(Color.white)
                                .shadow(color: .gray.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
                            Rectangle().strokeBorder(Color.black.opacity(0.13), lineWidth: 1.25)
                        }
                    )
                }.padding(.trailing, 10)
                .padding([.top, .bottom], 9)
                
            }.background(
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
            )
            .padding(.bottom, 10)
            .frame(maxWidth: .infinity)
        }
        .sheet(isPresented: $isInside, content: {
            InsideView(image: image, title: title, isFullInfo: $isInside)
        })
    }
}
struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
