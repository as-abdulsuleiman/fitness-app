//
//  WorkoutCard.swift
//  FitnessApp
//
//  Created by Abdul Suleiman on 04/08/25.
//

import SwiftUI

struct Workout {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let date: String
    let calories: String
    let tintColor: Color

}

struct WorkoutCard: View {
    @State var workout: Workout
    var body: some View {
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(20)
            
            VStack(spacing: 10){
                HStack{
                    Text(workout.title)
                        .font(.headline)
                    Spacer()
                    Text(workout.subtitle)
                        .font(.caption)
                }
                
                HStack{
                    Text(workout.date)
                        
                    Spacer()
                    
                    Text(workout.calories)
                        .font(.caption)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", subtitle: "23 mins", image:"figure.run", date: "Aug 3", calories: "321 kcal", tintColor: .green))
}
