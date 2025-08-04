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

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
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

                
            }
        }
    }
}

#Preview {
    HomeView()
}
