//
//  InsideView.swift
//  FoodRecipeApp
//
//  Created by Asadulla Juraev on 16.05.2021.
//

import SwiftUI

struct InsideView: View {
    var image = ""
    var title = ""
    @Binding var isFullInfo: Bool
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1)),Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645913243, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack{
                Image(image).resizable()
                    .edgesIgnoringSafeArea(.top)
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    HStack{
                        Button(action: {
                            withAnimation{
                                //                            presentationMode.wrappedValue.dismiss()
                                isFullInfo.toggle()
                            }
                        }, label: {
                            Rectangle().foregroundColor(.white)
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Image(systemName: "chevron.left")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                )
                        })
                        Spacer()
                    }.padding()
                    
                    VStack{
                        
                        HStack {
                            Text(title).fontWeight(.bold)
                                .font(.title3)
                            Spacer()
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                            Image(systemName: "bookmark").foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                        }
                        HStack{
                            Text("Dinner").foregroundColor(.gray)
                                .font(.caption)
                                .padding(.all, 5)
                                .padding(.horizontal, 6)
                                .background(
                                    Rectangle().strokeBorder(Color.gray.opacity(0.4))
                                )
                            Spacer()
                        }
                        .padding(.bottom, 10)
                        Divider()
                        HStack{
                            VStack(spacing: 10){
                                HStack(spacing: 5){
                                    Image(systemName: "clock")
                                        .resizable()
                                        .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                        .frame(width: 15, height: 15)
                                    Text("15 M Prep Time")
                                        .foregroundColor(.gray)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 13))
                                    Spacer()
                                }
                                HStack(spacing: 5){
                                    Image(systemName: "person.2")
                                        .resizable()
                                        .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                        .frame(width: 15, height: 15)
                                    Text("5 People Serving")
                                        .foregroundColor(.gray)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 13))
                                    Spacer()
                                }
                                
                            }
                            Spacer()
                            VStack(spacing: 5){
                                HStack {
                                    Image(systemName: "clock")
                                        .resizable()
                                        .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                        .frame(width: 15, height: 15)
                                    
                                    Text("45 M Cook Time")
                                        .foregroundColor(.gray)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 13))
                                    Spacer()
                                }.padding(.top, 5)
                                Spacer()
                            }
                            Spacer()
                        }
                        .frame(height: 50)
                        Spacer()
                    }.frame(height: 130)
                    .padding()
                    .background(
                        Rectangle().foregroundColor(.white)
                            .shadow(color: .gray.opacity(0.4), radius: 10, x: 0.0, y: 0.0)
                    )
                    .padding()
                    .padding(.top,80)
                    
                    //: TOP INFO
                    
                    VStack{
                        HStack {
                            Text("Ingredients").fontWeight(.semibold)
                                .font(.title3)
                            Spacer()
                            
                        }
                        VStack{
                            HStack{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                    .font(.title3)
                                Text("200g ").fontWeight(.black)
                                    + Text("Salmon Fresh")
                                    .fontWeight(.semibold)
                                Spacer()
                            }.font(.system(size: 14))
                            .padding(.top, 10)
                            .padding(.horizontal)
                            HStack{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                    .font(.title3)
                                Text("1tsp ").fontWeight(.black)
                                    + Text("Himalayan Salt")
                                    .fontWeight(.semibold)
                                Spacer()
                            }.font(.system(size: 14))
                            .padding(.top, 10)
                            .padding(.horizontal)
                            HStack{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                    .font(.title3)
                                Text("1tsp ").fontWeight(.black)
                                    + Text("White Repper")
                                    .fontWeight(.semibold)
                                Spacer()
                            }.font(.system(size: 14))
                            .padding(.top, 10)
                            .padding(.horizontal)
                            HStack{
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                    .font(.title3)
                                Text("2 Cloves ").fontWeight(.black)
                                    + Text("Onion")
                                    .fontWeight(.semibold)
                                Spacer()
                            }.font(.system(size: 14))
                            .padding(.top, 10)
                            .padding(.horizontal)
                            
                        }
                        Spacer()
                    }.frame(height: 200)
                    .padding()
                    .background(
                        Rectangle().foregroundColor(.white)
                            .shadow(color: .gray.opacity(0.4), radius: 10, x: 0.0, y: 0.0)
                    )
                    .padding(.horizontal)
                    
                    //: INGREDIENTS
                    
                    Spacer()
                    
                    VStack{
                        HStack {
                            Text("Method").fontWeight(.semibold)
                                .font(.title3)
                            Spacer()
                            
                        }
                        HStack(alignment: .top, spacing: 10){
                            VStack{
                                Circle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                    .overlay(
                                        Text("1").foregroundColor(.white)
                                    )
                                    .frame(width: 25, height: 25)
                                
                            }
                            VStack(alignment: .leading){
                                Text("Marinate salmon with Himalayan salt and white pepper")
                                    .lineLimit(3)
                                    .font(.callout)
                                HStack{
                                    Image("f1").resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(8)
                                    Image("f2").resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(8)
                                    Image("f3").resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(8)
                                }
                            }.padding(.bottom, 5)
                            Spacer()
                            VStack{
                                Text("5 min").font(.callout).foregroundColor(.gray)
                            }
                        }
                        HStack(alignment: .top, spacing: 10){
                            VStack{
                                Circle()
                                    .foregroundColor(Color(#colorLiteral(red: 0.3650282621, green: 0.6236766577, blue: 0.4994382858, alpha: 1)))
                                    .overlay(
                                        Text("2").foregroundColor(.white)
                                    )
                                    .frame(width: 25, height: 25)
                                
                            }
                            VStack(alignment: .leading){
                                Text("Heat a skillet until hot")
                                    .lineLimit(3)
                                    .font(.callout)
                                HStack{
                                    Image("f4").resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(8)
                                }
                            }.padding(.bottom, 5)
                            Spacer()
                            VStack{
                                Text("5 min").font(.callout).foregroundColor(.gray)
                            }
                        }
                    }.padding()
                    .background(
                        Rectangle().foregroundColor(.white)
                            .shadow(color: .gray.opacity(0.4), radius: 10, x: 0.0, y: 0.0)
                    )
                    .padding()
                    
                    //: METHOD
                }
            }
            .padding(.top, 50)
            //: SCROLLVIEW
            
            
        }
        .offset(x: 0, y: self.isFullInfo ? 0 : UIApplication.shared.keyWindow?.frame.height ?? 0)
    }
}

