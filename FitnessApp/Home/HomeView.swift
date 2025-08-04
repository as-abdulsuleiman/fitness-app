//
//  HomeView.swift
//  FitnessApp
//
//  Created by Abdul Suleiman on 04/08/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 30
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount:"7,241" ),
         Activity(id: 1, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .yellow, amount:"1,821" ),
        Activity(id: 2, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .gray, amount:"2,621" ),
     Activity(id: 3, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .cyan, amount:"3,621" ),
       Activity(id: 4, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .blue, amount:"5,521" ),
        Activity(id: 5, title: "Today Steps", subtitle: "Goal 10,000", image: "figure.run", tintColor: .purple, amount:"4,121" ),    ]

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading){
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        VStack(alignment: .leading, spacing:8){
                            Text("Calories")
                                 .font(.callout)
                                 .bold()
                                 .foregroundColor(.red)
                             
                             Text("123 kcal")
                                 .bold()
                             
                        }
                        
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing:8){
                            Text("Active")
                                 .font(.callout)
                                 .bold()
                                 .foregroundColor(.green)
                             
                             Text("52 mins")
                                 .bold()
                             
                        }
                        
                        .padding(.bottom)

                        
                        VStack(alignment: .leading, spacing:8){
                            Text("Stand")
                                 .font(.callout)
                                 .bold()
                                 .foregroundColor(.blue)
                             
                             Text("8 hours")
                                 .bold()
                             
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        PregressCircleView(progress: $calories, goal:600, color:.red)
                        
                        PregressCircleView(progress: $active, goal:60, color:.green)
                            .padding(.all, 20)
                        
                        PregressCircleView(progress: $stand, goal:12, color:.blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                }
                .padding()

                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    Spacer()
                    Button{
                        print("Show more")
                    }label: {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing:20), count: 2)){
                
                    ForEach(mockActivities, id: \.id) { activity in
                       ActivityCard(activity: activity)
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    HomeView()
}
