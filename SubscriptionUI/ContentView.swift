//
//  ContentView.swift
//  SubscriptionUI
//
//  Created by Mohammed Alsaleh on 19/09/1443 AH.
//

import SwiftUI

struct ContentView: View {
    @State var ArrayOfFeatures = [
        "Unlimited projects",
        "Tutorial Pack",
        "200 Tb/s storage"
    ]
    @State var selection = 0
    @State var planSelection = 1
    @State var SelectCard = "ChoosePlanCard"
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color(#colorLiteral(red: 0.2235294118, green: 0.5333333333, blue: 1, alpha: 1)))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color(#colorLiteral(red: 0.2235294118, green: 0.5333333333, blue: 1, alpha: 1)))
    }
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)),Color(#colorLiteral(red: 0.0876878879, green: 0.01176470611, blue: 0.1931733631, alpha: 1))], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            if SelectCard == "ChoosePlanCard" {
                        ChoosePlanCard
                    .animation(.easeInOut)
            } else {
                MakePaymentCard
                    .animation(.easeInOut)
            }
        }
    }
    // Choose Plan Card
    var ChoosePlanCard : some View {
        ZStack{
            // Background
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color("BackgroundColor"))
            // Content
            VStack {
                HStack {
                    VStack(alignment:.leading,spacing: 5) {
                        Text("Choose a plan")
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.white)
                        Text("Select the offer the best suits your need.")
                            .font(.system(.callout, design: .rounded))
                            .foregroundColor(.white.opacity(0.5))
                    }
                    Spacer()
                }.padding(.horizontal)
                TabView(selection: $selection) {
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("SecondaryBGColor"))
                            VStack(spacing: 15.0){
                                HStack(spacing: 40) {
                                    Image("SubscriptionWallpaper")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    VStack(alignment: .leading) {
                                        Text("Professional")
                                            .font(.system(.title3, design: .rounded))
                                        HStack {
                                            Text("$10")
                                                .font(.system(.title3, design: .rounded))
                                            Text("/ user")
                                                .font(.system(.callout, design: .rounded))
                                                .foregroundColor(.white.opacity(0.5))
                                        }
                                    }.foregroundColor(.white)
                                }.padding(.top,20)
                                VStack(alignment: .leading) {
                                    ForEach(self.ArrayOfFeatures,id:\.self) { data in
                                        HStack(spacing: 40) {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.blue)
                                            Text(data)
                                                .font(.system(.callout, design: .rounded))
                                                .foregroundColor(.white.opacity(0.5))
                                        }.padding(5)
                                    }
                                }
                                Button {
                                    withAnimation(.easeInOut) {
                                        self.SelectCard = "MakePaymentCard"
                                    }
                                } label: {
                                    ZStack {
                                        
                                                RoundedRectangle(cornerRadius: 50)
                                            .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.4392156863, green: 0.2392156863, blue: 0.9960784314, alpha: 1)),Color(#colorLiteral(red: 0.5607843137, green: 0.2862745098, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1))], startPoint: .top, endPoint: .bottom))
                                                    .frame(width: 200, height: 60)
                                        Text("Choose a plan")
                                            .font(.system(.title3, design: .rounded))
                                            .bold()
                                            .foregroundColor(.white)
                                    }.shadow(color: Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1)).opacity(0.5), radius: 5, x: 0, y: 5)
                                }
                                Spacer()
                            }.padding()
                        }
                        Rectangle()
                            .frame(width: 100, height: 30)
                            .foregroundColor(Color("BackgroundColor"))
                    }.tag(0)
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("SecondaryBGColor"))
                            VStack(spacing: 15.0){
                                HStack(spacing: 40) {
                                    Image("SubscriptionWallpaper")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    VStack(alignment: .leading) {
                                        Text("Professional")
                                            .font(.system(.title3, design: .rounded))
                                        HStack {
                                            Text("$10")
                                                .font(.system(.title3, design: .rounded))
                                            Text("/ user")
                                                .font(.system(.callout, design: .rounded))
                                                .foregroundColor(.white.opacity(0.5))
                                        }
                                    }.foregroundColor(.white)
                                }.padding(.top,20)
                                VStack(alignment: .leading) {
                                    ForEach(self.ArrayOfFeatures,id:\.self) { data in
                                        HStack(spacing: 40) {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.blue)
                                            Text(data)
                                                .font(.system(.callout, design: .rounded))
                                                .foregroundColor(.white.opacity(0.5))
                                        }.padding(5)
                                    }
                                }
                                Button {
                                    withAnimation(.easeInOut) {
                                        self.SelectCard = "MakePaymentCard"
                                    }
                                } label: {
                                    ZStack {
                                        
                                                RoundedRectangle(cornerRadius: 50)
                                            .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.4392156863, green: 0.2392156863, blue: 0.9960784314, alpha: 1)),Color(#colorLiteral(red: 0.5607843137, green: 0.2862745098, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1))], startPoint: .top, endPoint: .bottom))
                                                    .frame(width: 200, height: 60)
                                        Text("Choose a plan")
                                            .font(.system(.title3, design: .rounded))
                                            .bold()
                                            .foregroundColor(.white)
                                    }.shadow(color: Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1)).opacity(0.5), radius: 5, x: 0, y: 5)
                                }
                                Spacer()
                            }.padding()
                        }
                        Rectangle()
                            .frame(width: 100, height: 30)
                            .foregroundColor(Color("BackgroundColor"))
                    }.tag(1)
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("SecondaryBGColor"))
                            VStack(spacing: 15.0){
                                HStack(spacing: 40) {
                                    Image("SubscriptionWallpaper")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    VStack(alignment: .leading) {
                                        Text("Professional")
                                            .font(.system(.title3, design: .rounded))
                                        HStack {
                                            Text("$10")
                                                .font(.system(.title3, design: .rounded))
                                            Text("/ user")
                                                .font(.system(.callout, design: .rounded))
                                                .foregroundColor(.white.opacity(0.5))
                                        }
                                    }.foregroundColor(.white)
                                }.padding(.top,20)
                                VStack(alignment: .leading) {
                                    ForEach(self.ArrayOfFeatures,id:\.self) { data in
                                        HStack(spacing: 40) {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.blue)
                                            Text(data)
                                                .font(.system(.callout, design: .rounded))
                                                .foregroundColor(.white.opacity(0.5))
                                        }.padding(5)
                                    }
                                }
                                Button {
                                    withAnimation(.easeInOut) {
                                        self.SelectCard = "MakePaymentCard"
                                    }
                                } label: {
                                    ZStack {
                                        
                                                RoundedRectangle(cornerRadius: 50)
                                            .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.4392156863, green: 0.2392156863, blue: 0.9960784314, alpha: 1)),Color(#colorLiteral(red: 0.5607843137, green: 0.2862745098, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1))], startPoint: .top, endPoint: .bottom))
                                                    .frame(width: 200, height: 60)
                                        Text("Choose a plan")
                                            .font(.system(.title3, design: .rounded))
                                            .bold()
                                            .foregroundColor(.white)
                                    }.shadow(color: Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1)).opacity(0.5), radius: 5, x: 0, y: 5)
                                }
                                Spacer()
                            }.padding()
                        }
                        Rectangle()
                            .frame(width: 100, height: 30)
                            .foregroundColor(Color("BackgroundColor"))
                    }.tag(2)
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                Spacer()
            }.padding(20)
        }.frame(width: UIScreen.main.bounds.width - 40, height: 500)
    }
    // Make a Payment Card
    var MakePaymentCard : some View {
        ZStack {
            // Background
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color("BackgroundColor"))
            // Content
            VStack(spacing: 20.0){
                HStack {
                    Image("CreditCard")
                        .resizable()
                        .frame(width: 60, height: 40)
                    VStack(alignment: .leading){
                        Text("Mohammed Alsaleh")
                        Text("xxxx8900")
                    }.font(.system(size: 14)).foregroundColor(.white).padding(.horizontal)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "pencil")
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.4, blue: 1, alpha: 1)))
                            .padding(6)
                            .background(Circle()
                                            .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.4, blue: 1, alpha: 1)).opacity(0.2)))
                    }
                }.padding().background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color("SecondaryBGColor")))
                ZStack {
                    if planSelection == 1 {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("SecondaryBGColor"))
                            .frame(maxWidth: .infinity, maxHeight: 70)
                    }
                    RoundedRectangle(cornerRadius: 20)
                            .stroke(Color(#colorLiteral(red: 0.2235294118, green: 0.5803921569, blue: 1, alpha: 1)),lineWidth: 2)
                            .frame(maxWidth: .infinity, maxHeight: 70)
                    HStack {
                        ZStack {
                            Circle()
                                .stroke(Color.gray, lineWidth: 3)
                                .frame(width: 20, height: 20)
                            if planSelection == 1 {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 10, height: 10)
                            }
                        }
                        VStack(alignment: .leading) {
                            Text("Yearly")
                                .foregroundColor(.white)
                            Text("Pay for a full years")
                                .font(.caption2)
                                .foregroundColor(.white.opacity(0.5))
                        }
                        Spacer()
                        Text("$120")
                            .bold()
                            .foregroundColor(.white)
                        Text("/ m")
                            .font(.caption2)
                            .foregroundColor(.white.opacity(0.5))
                    }.padding()
                            
                        }.overlay {
                            Image("star")
                                .frame(maxWidth: .infinity,alignment: .trailing)
                        }.onTapGesture {
                            withAnimation(.spring()) {
                            if planSelection == 2 {
                                self.planSelection = 1
                            }
                            }
                        }
                ZStack {
                    if planSelection == 2 {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("SecondaryBGColor"))
                            .frame(maxWidth: .infinity, maxHeight: 70)
                    }
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white,lineWidth: 2)
                            .frame(maxWidth: .infinity, maxHeight: 70)
                    HStack {
                        ZStack {
                            Circle()
                                .stroke(Color.gray, lineWidth: 3)
                                .frame(width: 20, height: 20)
                            if planSelection == 2 {
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 10, height: 10)
                            }
                        }
                        VStack(alignment: .leading) {
                            Text("Monthly")
                                .foregroundColor(.white)
                            Text("Pay monthly , cancle any time")
                                .font(.caption2)
                                .foregroundColor(.white.opacity(0.5))
                        }
                        Spacer()
                        Text("$20")
                            .bold()
                            .foregroundColor(.white)
                        Text("/ m")
                            .font(.caption2)
                            .foregroundColor(.white.opacity(0.5))
                    }.padding()
                            
                        }.onTapGesture {
                            withAnimation(.spring()) {
                            if planSelection == 1 {
                                self.planSelection = 2
                            }
                            }
                        }
                
                Button {
                    withAnimation(.easeInOut) {
                        self.SelectCard = "ChoosePlanCard"
                    }
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.4392156863, green: 0.2392156863, blue: 0.9960784314, alpha: 1)),Color(#colorLiteral(red: 0.5607843137, green: 0.2862745098, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1))], startPoint: .top, endPoint: .bottom))
                                    .frame(height:55)
                                    .frame(maxWidth: .infinity)
                        Text("Choose a plan")
                            .font(.system(.title3, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                    }.shadow(color: Color(#colorLiteral(red: 0.7058823529, green: 0.3411764706, blue: 1, alpha: 1)).opacity(0.5), radius: 5, x: 0, y: 5)
                }.frame(maxWidth: .infinity, maxHeight: 55)
                    .padding(.vertical)
            }.padding()
        }.frame(width: UIScreen.main.bounds.width - 40, height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
