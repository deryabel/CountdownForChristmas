//
//  ContentView.swift
//  CountdownForChristmas
//
//  Created by Derya Bel on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //Snow
            VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 0)
                    .frame(height: 100)
                    .foregroundColor(.white)
            }
            //Text
            VStack{
                Text("\(getNumberOfDaysUntilChristmas())")
                    .minimumScaleFactor(0.5)
                    .font(.custom("Kingthings Christmas 2", size: 250))
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .padding(.vertical,-30)
                
                Text("Days Until Christmas!")
                    .font(.custom("Kingthings Christmas 2", size: 40))
                    .foregroundColor(.white)
            }.padding(.bottom,100)
            //Decorations
            VStack{
                HStack{
                    Spacer()
                    Image("moon-ge9c9ae19b_1280")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .rotationEffect(.degrees(-10))
                        .padding(.top,30)
                        .padding(.trailing,30)
                }
                Spacer()
                HStack{
                    Image("tree-g842f99a39_1920")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .rotationEffect(.degrees(-5))
                        .padding(.bottom,10)
                        .padding(.all,-30)
                    Spacer()
                    Image("snowman-gfb9c7be39_1280")
                        .resizable()
                        .scaledToFit()
                        .frame(height:250)
                        .padding(.bottom,20)
                    
                }
            }
        }
        .background(Color.init(red: 0/255.0, green: 14/255.0, blue: 51/255.0))
        .ignoresSafeArea()
        
    }
    
    func getNumberOfDaysUntilChristmas() -> Int {
        let christmasDateComponents = DateComponents(month:12, day:25,hour: 23,minute: 59,second: 59)
        let currentDate = Date()
        if let nextChristmasDate = Calendar.current.nextDate(after: currentDate, matching: christmasDateComponents, matchingPolicy: .strict), let daysUntilNextChristmasDate = Calendar.current.dateComponents([.day], from: currentDate, to: nextChristmasDate).day{
           return daysUntilNextChristmasDate
        }
        return 0
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
